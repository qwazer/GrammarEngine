/*
**  DeSR
**  src/Parser.cpp
**  ----------------------------------------------------------------------
**  Copyright (c) 2006  Giuseppe Attardi (attardi@di.unipi.it).
**  ----------------------------------------------------------------------
**
**  This file is part of DeSR.
**
**  DeSR is free software; you can redistribute it and/or modify it
**  under the terms of the GNU General Public License, version 3,
**  as published by the Free Software Foundation.
**
**  DeSR is distributed in the hope that it will be useful,
**  but WITHOUT ANY WARRANTY; without even the implied warranty of
**  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
**  GNU General Public License for more details.
**
**  You should have received a copy of the GNU General Public License
**  along with this program.  If not, see <http://www.gnu.org/licenses/>.
**  ----------------------------------------------------------------------
*/

#include "Parser.h"
#include "ReviseEventStream.h"
#include "Corpus.h"
#include "version.h"

// library
#include "ixe/include/Timer.h"
#include "io/Format.h"

// standard
#include <iostream>
#ifdef _WIN32
# include <io.h>
# include <fcntl.h>
#else
# include <sys/resource.h>	// getrusage()
#endif

using namespace std;
using namespace IXE;
using IXE::io::Format;

#define MAX_LINE_LEN 8196

namespace Parser {

ParserConfig::ParserConfig(IXE::Configuration::Params& params) :
  FeatureConfig(params),

  algorithm	("Algorithm", "SVM", params), // ME, AP, PA, SVM
  lang		("Language", "en", params), // en, it, pt, sp, jp, ...
  beam		("Beam", 1, 1, params), // beam size

  normLemma	("LemmaReplace", params),
  featureCutoff	("FeatureCutoff", 0, params),
  verbose	("Verbose", false, params),
  ShowActions	("ShowActions", false, params),
  ShowPerplexity("ShowPerplexity", false, params)
{ }

void ParserConfig::writeHeader(ostream& os)
{
  os << "<desr alg='" << *algorithm << "' version='" << version << "'>" << endl;
  serialize(os);
  os << "</desr>" << endl;
}

/**
 *      Define and initialize (exactly once) the static data member parserFor
 *      and return a reference to it.  This function is needed to
 *      guarantee that the map is initialized before its first use across all
 *      translation units, something that would not be guaranteed if it were a
 *      static data member initialized at file scope.
 */
std::map<char const*, ParserFactory*>& ParserMap::get()
{
  static std::map<char const*, ParserFactory*> parserFor;
  return parserFor;
}

ParserFactory* ParserMap::get(char const* type)
{
  std::map<char const*, ParserFactory*>& parserMap = get();
  map<char const*, ParserFactory*>::const_iterator rit = parserMap.find(type);
  return (rit == parserMap.end()) ? 0 : rit->second;
}


Parser* Parser::create(char const* modelFile, char const* algorithm)
{
 ParserConfig config;	// global params

  if (modelFile)
   {
    // parsing
    // read generic parameters from modelFile
    ifstream ifs(modelFile);
    if (!ifs) {
      cerr << "Missing model file: " << modelFile << endl;
      return 0;
    }
    config.load(ifs);		// just header
    algorithm = config.algorithm->c_str(); // model is prescriptive
    if (!algorithm) {
      cerr << "No algorithm specified" << endl;
      return 0;
    }
  }
  
  // now we know which algorith to use
  ParserFactory* factory = ParserMap::get(algorithm);
  if (!factory) {
    cerr << "No such algorithm: " << algorithm << endl;
    return 0;
  }
  ::Parser::Parser* parser = factory(modelFile);
  if (parser == 0) {
    if (modelFile)
      cerr << "Could not load: " << modelFile << endl;
    else
      cerr << "Could not create parser for: " << algorithm << endl;
    return 0;
  }
  return parser;
}

Enumerator<Sentence*>* Parser::pipe(Enumerator<std::vector<Token*>*>& tve)
{
  return new ParserPipe(*this, tve);
}

Enumerator<Sentence*>* Parser::pipe(Enumerator<Sentence*>& tve)
{
  return new ParserSentPipe(*this, tve);
}

void Parser::parse(SentenceReader* reader, Corpus* outCorpus, ostream& os)
{
  int las = 0;
  int uas = 0;
  int tot = 0;
  int sent = 0;
# ifdef _WIN32
  if (os == cout)
    _setmode(_fileno(stdout), _O_BINARY); // no \r
# endif

  while (reader->MoveNext()) {
    Sentence* sin = reader->Current();
    Sentence* sout = parse(sin);
    outCorpus->print(os, *sout);
    os << endl;
    ++sent;
    // check accuracy
    Sentence::const_iterator soutIt = sout->begin();
    FOR_EACH (Sentence, *sin, sinIt) {
      TreeToken* tin = *sinIt;
      TreeToken* tout = *soutIt++;
      tot++;
      if (tin->linkHead() == tout->linkHead()) {
	uas++;
	if (tin->linkLabel() == tout->linkLabel())
	  las++;
      }
    }
    delete sin;
    delete sout;
  }
  //showEval(tot, las, uas, sent);
}

void Parser::showEval(int tokenCount, int las, int uas, int sentCount)
{
  cerr << Format("LAS: %.2f %% (%d/%d)", (100. * las)/tokenCount, las, tokenCount) << endl;
  cerr << Format("UAS: %.2f %% (%d/%d)", (100. * uas)/tokenCount, uas, tokenCount) << endl;
  cerr << "Sentences: " << sentCount << endl;
}

static Timer timer;

string secs_to_h(int secs)
{
  struct NameSize { const char* n; char const* sep; int s; };

  static const NameSize units[] = {
    "week", " ", 7*24*3600,
    "day",  " ",   24*3600,
    "",    ":",      3600,
    "",    ":",        60,
    "",     "",         1
  };

  // specifically handle zero
  if (secs == 0) return "0 s";

  string s;

  for (int i = 0; i < 5; i++) {
    int divisor = units[i].s;
    int quot = secs / divisor;
    if (quot) {
      s += Format("%d%s", quot, units[i].n);
      secs -= quot * divisor;
      if (secs) s += units[i].sep;
    }
  }
  return s;
}

// Doesn't compile on VS2008 SP1 (_MSC_VER = 1500)
string Parser::procStat()
{
# ifdef _WIN32
  FILETIME starttime;
  FILETIME exittime;
  FILETIME kerneltime;
  FILETIME usertime;
  GetProcessTimes(GetCurrentProcess(),
		  &starttime, &exittime, &kerneltime, &usertime);
  long long ktime = *(long long*)&kerneltime;
  long long utime = *(long long*)&usertime;
  /* Convert FILETIME (0.1 us) to seconds */
  int procSec = (ktime + utime) / 10000000L;
  SIZE_T minRSS, maxRSS;
  GetProcessWorkingSetSize(GetCurrentProcess(), &minRSS, &maxRSS);
# else
    struct rusage rusage;
    getrusage(RUSAGE_SELF, &rusage);
    int procSec = rusage.ru_utime.tv_sec + rusage.ru_stime.tv_sec;
    int maxRSS = rusage.ru_maxrss;
# endif
    timer.split();
    long elapsedSec = timer.seconds();
    double usage = 100. * procSec / (elapsedSec + 0.00001);
    char result[200];
    string procTime = secs_to_h(procSec);
    string elapsed = secs_to_h(elapsedSec);
    snprintf(result, sizeof(result),
	     "Process: %s run, %s real, %.2f%% CPU, %0.2f MB",
	     procTime.c_str(), elapsed.c_str(),
	     usage, maxRSS / (1024.*1024.));
    return result;
}

/**
 * Use patterns in @c LemmaReplace configuration variable to normalize lemmas.
 */

static void normalizeLemma(Token& tok, Replacements& replacements)
{
  string lemma(*tok.lemma());
  TO_EACH (Replacements, replacements, dit)
    if (dit->first.modify(lemma, dit->second))
      break;
  tok.lemma(lemma);
}

void Parser::preprocess(Sentence* sentence)
{
  TO_EACH (Sentence, *sentence, sit) {
    Token& tok = *(*sit)->token;
    normalizeLemma(tok, *config.normLemma);
    if (tok.links.empty())
      tok.links.resize(1);		// at least dependency link is needed
  }
}

deque<Sentence*> Parser::collectSentences(Enumerator<Sentence*>* sentenceReader)
{
  // collect all sentences in order to count word/lemma frequencies
  int formCutoff = config.lexCutoff;
  int lemmaCutoff = config.lexCutoff;
  WordCounts formCounts;
  WordCounts lemmaCounts;
  deque<Sentence*> sentences;

  while (sentenceReader->MoveNext()) {
    Sentence* sentence = sentenceReader->Current();
    if (sentence->size()) {
      preprocess(sentence);
      FOR_EACH (Sentence, *sentence, sit) {
	TreeToken* tok = *sit;
	formCounts[tok->get("FORM")->c_str()]++;
	lemmaCounts[tok->get("LEMMA")->c_str()]++;
      }
      sentences.push_back(sentence);
    }
  }

  // replace less frequent tokens attributes with #UNKNOWN
  FOR_EACH (deque<Sentence*>, sentences, sits) {
    FOR_EACH (Sentence, **sits, sit) {
      TreeToken* tok = *sit;
      string const* form = tok->get("FORM");
      if (formCounts[form->c_str()] < formCutoff)
	tok->set("FORM", "#UNKNOWN");
      string const* lemma = tok->get("LEMMA");
      if (lemmaCounts[lemma->c_str()] < lemmaCutoff)
	tok->set("LEMMA", "#UNKNOWN");
    }
  }
  // clear memory
  formCounts.clear(); formCounts = WordCounts();
  lemmaCounts.clear(); lemmaCounts = WordCounts();
  return sentences;
}

// ======================================================================

void GlobalInfo::extract(Sentence const& sentence)
{
  Language const* lang = sentence.language;
  // look for noun child of preposition with time/loc dependency
  // or for noun parent of postposition with time/loc dependency
  FOR_EACH (Sentence, sentence, sit) {
    TreeToken* node = *sit;
    Token& tok = *node->token;
    if (lang->hasPostpositions) {
      int head = node->linkHead();
      if (head && tok.isPreposition(lang)) {
	// get parent
	Token& parent = *sentence[head - 1]->token;
	string const* noun = parent.lemma();
	if (noun && !noun->empty()) {
	  if (parent.isNoun(lang)) {
	    if (parent.isTime(lang)) {
	      // add to time lemmas
	      timeLemmas.add(*noun);
	    } else if (parent.isLocation(lang)) {
	      // add to location lemmas
	      locLemmas.add(*noun);
	    }
	  }
	}
      }
    } else {
      int head = node->linkHead();
      if (head == 0)
	continue;
      if (tok.isNoun(lang)) {
	string const* noun = tok.lemma();
	if (noun && !noun->empty()) {
	  if (tok.isTime(lang)) {
	    // add to time lemmas
	    timeLemmas.add(*noun);
	  } else if (tok.isLocation(lang)) {
	    // add to location lemmas
	    locLemmas.add(*noun);
	  }
	  // sometimes the link is indirect
	  Token* par = sentence[head - 1]->token;
	  if (par->isPreposition(lang)) {
	    if (par->isTime(lang)) {
	      // add to time lemmas
	      timeLemmas.add(*noun);
	    } else if (par->isLocation(lang)) {
	      // add to location lemmas
	      locLemmas.add(*noun);
	    }
	  }
	}
      }
    }
  }
}

void GlobalInfo::clearRareEntities()
{
  for (WordCounts::iterator pit = timeLemmas.begin();
       pit != timeLemmas.end(); ) {
    WordCounts::iterator cur = pit++;
    int tc = cur->second;
    int lc = locLemmas.count(cur->first);
    if (tc >= freqRatio * lc)
      locLemmas.erase(cur->first);
    else if (lc >= freqRatio * tc)
      timeLemmas.erase(cur);
  }
}

void GlobalInfo::clear()
{
  timeLemmas.clear();
  timeLemmas = WordCounts();
  locLemmas.clear();
  locLemmas = WordCounts();
}

void GlobalInfo::save(ofstream& ofs)
{
  // dump timeLemmas
  ofs << timeLemmas.size() << endl;
  FOR_EACH (WordCounts, timeLemmas, pit)
    ofs << pit->first << endl;
  // dump locLemmas
  ofs << locLemmas.size() << endl;
  FOR_EACH (WordCounts, locLemmas, pit)
    ofs << pit->first << endl;
}

void GlobalInfo::load(ifstream& ifs)
{
  char line[MAX_LINE_LEN];
  // read timeLemmas
  if (ifs.getline(line, MAX_LINE_LEN)) {
    int n = atoi(line);		// number of timeLemmas
    while (n-- && ifs.getline(line, MAX_LINE_LEN))
      timeLemmas.add(line);
    // read locLemmas
    if (ifs.getline(line, MAX_LINE_LEN)) {
      n = atoi(line);		// number of locLemmas
      while (n-- && ifs.getline(line, MAX_LINE_LEN))
	locLemmas.add(line);
    }
  }
}

// ======================================================================

ParserPipe::ParserPipe(Parser& parser, Enumerator<std::vector<Token*>*>& tve) :
  parser(parser),
  tve(tve),
  language(Language::get(parser.config.lang->c_str()))
{ }

void ParserPipe::Dispose()
{
  parser.decRef();
  delete this;
}

bool ParserPipe::MoveNext()
{
  return tve.MoveNext();
}

Sentence* ParserPipe::Current()
{
  vector<Token*>* sent = tve.Current();
  Sentence* sentence = new Sentence(language);
  int id = 1;
  FOR_EACH (vector<Token*>, *sent, vit) {
    Token* tok = *vit;
    TreeToken* token = new TreeToken(id++, tok->form, tok->attributes, tok->links);
    sentence->push_back(token);
    delete tok;
  }
  delete sent;
  return parser.parse(sentence);
}

// ======================================================================

ParserSentPipe::ParserSentPipe(Parser& parser, Enumerator<Sentence*>& tve) :
  parser(parser),
  tve(tve)
{ }

void ParserSentPipe::Dispose()
{
  parser.decRef();
  delete this;
}

bool ParserSentPipe::MoveNext()
{
  return tve.MoveNext();
}

Sentence* ParserSentPipe::Current()
{
  Sentence* sentence = tve.Current();
  return parser.parse(sentence);
}

} // namespace Parser
