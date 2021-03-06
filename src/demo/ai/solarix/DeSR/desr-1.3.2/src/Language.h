/*
**  DeSR
**  src/Language.h
**  ----------------------------------------------------------------------
**  Copyright (c) 2005  Giuseppe Attardi (attardi@di.unipi.it).
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

#ifndef DeSR_Language_H
#define DeSR_Language_H

#include "MorphExtractor.h"

namespace Tanl {

/**
 *	@ingroup parser
 *
 *	Functional interface for extractors of morphological features.
 */
struct Language
{
  char const* verbCPos;		///< Coarse POS of verbs
  char const* nounCPos;		///< Coarse POS of nouns
  char const* prepCPos;		///< Coarse POS of prepositions
  char const* timeDep;		///< Dependency label for time complement
  char const* locDep;		///< Dependency label for location complement
  bool hasPostpositions;	///< For languages using postpositions
  MorphExtractor* morphExtractor;

  Language(char const* v = "V", char const* n = "N", char const* p = "P") :
    verbCPos(v),
    nounCPos(n),
    prepCPos(p),
    timeDep(""),
    locDep(""),
    hasPostpositions(false),
    morphExtractor(new MorphExtractor())
  { }

  ~Language() { delete morphExtractor; }

  /** Used to identify possible root node in a disconnected tree */
  virtual bool rootPos(std::string const& pos) const { return true; }

  virtual char const* rootLabel() const;

  /** @return the ISO-639 language code for the language. */
  char const* code() const;

  /** @return the @c Language associated to the ISO-639 @c code. */
  static Language const* get(char const* code);

  /** @return true if numbers do not disagree. */
  virtual bool	numbAgree(char x, char y) const { return false; }

  /** @return true if genders do not disagree. */
  virtual bool	gendAgree(char x, char y) const { return false; }

  /** @return true if @c pos has left concordance valence */
  virtual bool	morphoLeft(std::string const& pos) const { return false; }

  /** @return true if @c pos has right concordance valence */
  virtual bool	morphoRight(std::string const& pos) const { return false; }
};

/**
 *	@ingroup parser
 */
struct ArabicLanguage : public Language
{
  ArabicLanguage() { morphExtractor = new ArabicMorphExtractor(); }
};

/**
 *	@ingroup parser
 */
struct IndianLanguage : public Language
{
  IndianLanguage() :
    Language("v", "n", "psp")
  {
    hasPostpositions = true;
    timeDep = "k7t";
    locDep = "k7p";
    morphExtractor = new IndianMorphExtractor();
  }

  char const* rootLabel() const;

};

/**
 *	@ingroup parser
 */
struct BanglaLanguage : public IndianLanguage
{
  BanglaLanguage() :
    IndianLanguage() { }
};

/**
 *	@ingroup parser
 */
struct BasqueLanguage : public Language
{
  BasqueLanguage() :
    Language("ADI", "IZE", "")
  { morphExtractor = new BasqueMorphExtractor(); }
};

/**
 *	@ingroup parser
 */
struct BulgarianLanguage : public Language
{
  BulgarianLanguage() { morphExtractor = new MorphExtractor(); }
};

/**
 *	@ingroup parser
 */
struct CatalanLanguage : public Language
{
  CatalanLanguage() :
    Language("v", "n", "s") {
    timeDep = "CCT";
    locDep = "CCL";
    morphExtractor = new SpanishMorphExtractor();
  }

  bool	morphoRight(std::string const& pos) const { return pos == "sp"; }

  char const* rootLabel() const;
};

/**
 *	@ingroup parser
 */
struct ChineseLanguage : public Language
{
  ChineseLanguage() :
    Language("V", "N", "P")
  {  }
};

/**
 *	@ingroup parser
 */
struct CzechLanguage : public Language
{
  CzechLanguage() { morphExtractor = new CzechMorphExtractor(); }
};

/**
 *	@ingroup parser
 */
struct DanishLanguage : public Language
{
  DanishLanguage() { morphExtractor = new DanishMorphExtractor(); }
};

/**
 *	@ingroup parser
 */
struct DutchLanguage : public Language
{
  DutchLanguage() { morphExtractor = new DutchMorphExtractor(); }
};

/**
 *	@ingroup parser
 */
struct EnglishLanguage : public Language
{
  // some versions distinguish VV, VB, VH for verb CPOS, hence use just initial.
  EnglishLanguage() :
    Language("V", "NN", "IN")
  {
    timeDep = "TMP";
    locDep = "LOC";
    morphExtractor = new MorphExtractor();
  }

  bool rootPos(std::string const& pos) const {
    return pos == "VBD" ||  pos == "VBP" || pos == "VBZ" || pos == "MD";
  }
};

/**
 *	@ingroup parser
 *
 *	Variant for Stanford Dependencies.
 */
struct EnglishStanfordLanguage : public EnglishLanguage
{
  bool rootPos(std::string const& pos) const {
    return strspn(pos.c_str(), ".,:'`"); // punctuations are annotated as 0 null
  }

  char const* rootLabel() const;
};

/**
 *	@ingroup parser
 */
struct FrenchLanguage : public Language
{
  FrenchLanguage() :
    Language("V", "N", "P")
  {
    morphExtractor = new FrenchMorphExtractor();
  }

  bool	numbAgree(char x, char y) const {
    return x == y;
  }

  bool	gendAgree(char x, char y) const {
    return x == y || x == '\0' || y == '\0';
  }

  bool	morphoRight(std::string const& pos) const { return pos == "P+D"; }

  char const* rootLabel() const;
};

/**
 *	@ingroup parser
 */
struct GermanLanguage : public Language
{
  GermanLanguage() { morphExtractor = new MorphExtractor(); }
};

/**
 *	@ingroup parser
 */
struct GreekLanguage : public Language
{
  GreekLanguage() { morphExtractor = new MorphExtractor(); }
};

/**
 *	@ingroup parser
 */
struct ItalianLanguage : public Language
{
  ItalianLanguage() :
    Language("V", "S", "E")
  {
    timeDep = "comp_temp";		// Tanl tagset
    locDep = "comp_loc";
    morphExtractor = new ItalianMorphExtractor();
  }

  bool	numbAgree(char x, char y) const {
    return x == y || x == 'n' || y == 'n';
  }

  bool	gendAgree(char x, char y) const {
    return x == y || x == 'n' || y == 'n';
  }

  bool	morphoRight(std::string const& pos) const { return pos == "EA"; }
};

/**
 *	@ingroup parser
 */
struct ItalianTutLanguage : public Language
{
  ItalianTutLanguage() :
    Language("VERB", "NOUN", "PREP")
  { morphExtractor = new ItalianTutMorphExtractor(); }

  bool	numbAgree(char x, char y) const {
    return x == y || x == 'N' || y == 'N';
  }

  bool	gendAgree(char x, char y) const {
    return x == y || x == 'N' || y == 'N';
  }

  char const* rootLabel() const;
};

/**
 *	@ingroup parser
 */
struct JapaneseLanguage : public Language
{
  JapaneseLanguage() { morphExtractor = new MorphExtractor(); }
};

/**
 *	@ingroup parser
 */
struct HindiLanguage : public IndianLanguage
{ };

/**
 *	@ingroup parser
 */
struct HungarianLanguage : public Language
{
  HungarianLanguage() { morphExtractor = new MorphExtractor(); }
};

/**
 *	@ingroup parser
 */
struct PortugueseLanguage : public Language
{
  PortugueseLanguage() {
    morphExtractor = new PortugueseMorphExtractor();
    verbCPos = "v";
  }
};

/**
 *	@ingroup parser
 */
struct SloveneLanguage : public Language
{
  SloveneLanguage() {
    morphExtractor = new SloveneMorphExtractor();
  }
};

/**
 *	@ingroup parser
 */
struct SpanishLanguage : public Language
{
  SpanishLanguage() { morphExtractor = new SpanishMorphExtractor(); }

  char const* rootLabel() const;
};

/**
 *	@ingroup parser
 */
struct SwedishLanguage : public Language
{
  SwedishLanguage() { morphExtractor = new MorphExtractor(); }

  bool rootPos(std::string const& pos) const {
    return pos.size() > 1 && pos[1] == 'V';
  }
};

/**
 *	@ingroup parser
 */
struct TeluguLanguage : public IndianLanguage
{
  TeluguLanguage() :
    IndianLanguage() { }
};

/**
 *	@ingroup parser
 */
struct TurkishLanguage : public Language
{
  TurkishLanguage() { morphExtractor = new TurkishMorphExtractor(); }
};


struct RussianLanguage : public Language
{
  RussianLanguage() { morphExtractor = new RussianMorphExtractor(); }
};

} // namespace Tanl

#endif // DeSR_Language_H
