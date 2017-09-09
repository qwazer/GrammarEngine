﻿automat sg
{
 #define наст( Статья, В_инф, Aspect=NULL )  \
  #begin
   entry Статья : ПРИЛАГАТЕЛЬНОЕ { paradigm Прил_5032 }
   extern entry В_инф:ИНФИНИТИВ
   #if Aspect==NULL
   link ПРИЛАГАТЕЛЬНОЕ:Статья {} <в_инфинитив> ИНФИНИТИВ: В_инф {}
   #else
   link ПРИЛАГАТЕЛЬНОЕ:Статья {} <в_инфинитив> ИНФИНИТИВ: В_инф { ВИД:Aspect }
   #endif
   
   tag ПРИЛАГАТЕЛЬНОЕ:Статья {
                              ПРИЧАСТИЕ
							  СТРАД
							  ВРЕМЯ:НАСТОЯЩЕЕ
                              ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
                              ВИД:НЕСОВЕРШ
                              ПадежВал:ТВОР
                             }
  #end



 #define прош( Статья, В_инф, Aspect=NULL )  \
  #begin
   entry Статья : ПРИЛАГАТЕЛЬНОЕ { paradigm Прил_5032 }
   extern entry В_инф:ИНФИНИТИВ
   #if Aspect==NULL
   link ПРИЛАГАТЕЛЬНОЕ:Статья {} <в_инфинитив> ИНФИНИТИВ: В_инф {}
   #else
   link ПРИЛАГАТЕЛЬНОЕ:Статья {} <в_инфинитив> ИНФИНИТИВ: В_инф { ВИД:Aspect }
   #endif
   
   tag ПРИЛАГАТЕЛЬНОЕ:Статья {
                              ПРИЧАСТИЕ
							  СТРАД
							  ВРЕМЯ:ПРОШЕДШЕЕ
                              ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
                              ВИД:СОВЕРШ
                              ПадежВал:ТВОР
                             }
  #end


 #define прил( Статья )  \
  #begin
   entry Статья : ПРИЛАГАТЕЛЬНОЕ { paradigm Прил_5032 }
  #end

 наст( абсолютизируемый, абсолютизировать, НЕСОВЕРШ )
 прил( автопилотируемый )
 наст( активируемый, активировать, НЕСОВЕРШ )
 наст( актуализируемый, актуализировать, НЕСОВЕРШ )
 наст( актуализуемый, актуализовать, НЕСОВЕРШ )
 наст( амнистируемый, амнистировать, НЕСОВЕРШ )
 наст( арестовываемый, арестовывать )
 наст( артикулируемый, артикулировать )
 наст( ассигнуемый, ассигновать, НЕСОВЕРШ )
 наст( ассимилируемый, ассимилировать, НЕСОВЕРШ )
 наст( аттестуемый, аттестовать, НЕСОВЕРШ )
 наст( балуемый, баловать )
 наст( баюкаемый, баюкать )
 наст( беспокоимый, беспокоить )
 наст( бичуемый, бичевать )
 наст( благодетельствуемый, благодетельствовать )
 наст( благоприятствуемый, благоприятствовать )
 наст( блокируемый, блокировать, НЕСОВЕРШ )
 прил( богохранимый )
 наст( бомбардируемый, бомбардировать )
 наст( бороздимый, бороздить )
 наст( бранимый, бранить )
 наст( вбираемый, вбирать )
 наст( вбрасываемый, вбрасывать )
 наст( вдавливаемый, вдавливать )
 наст( вдвигаемый, вдвигать )
 наст( вдуваемый, вдувать )
 наст( величаемый, величать )
 наст( венчаемый, венчать )
 наст( вербализуемый, вербализовать )
 прил( ветропроницаемый )
 наст( вещаемый, вещать )
 наст( вживляемый, вживлять )
 прил( взаимозаменимый )
 прил( взаимообратимый )
 прил( взаимопроницаемый )
 наст( взбалтываемый, взбалтывать )
 наст( взбиваемый, взбивать )
 наст( взламываемый, взламывать )
 наст( визуализируемый, визуализировать )
 наст( вкушаемый, вкушать )
 наст( влагаемый, влагать )
 наст( влачимый, влачить )
 наст( вмещаемый, вмещать )
 наст( водворяемый, водворять )
 наст( возбраняемый, возбранять )
 наст( возвещаемый, возвещать )
 наст( возжигаемый, возжигать )
 наст( возмущаемый, возмущать )
 наст( вознаграждаемый, вознаграждать )
 прил( возобновимый )
 наст( возрождаемый, возрождать )
 наст( вонзаемый, вонзать )
 наст( вооружаемый, вооружать )
 прил( воплотимый )
 наст( воспламеняемый, воспламенять )
 наст( восполняемый, восполнять )
 наст( воспоминаемый, воспоминать )
 наст( воссоединяемый, воссоединять )
 наст( воссоздаваемый, воссоздавать )
 наст( востребуемый, востребовать )
 наст( вписываемый, вписывать )
 наст( вплетаемый, вплетать )
 наст( вправляемый, вправлять )
 наст( впрыскиваемый, впрыскивать )
 наст( вскармливаемый, вскармливать )
 наст( вскидываемый, вскидывать )
 наст( вскрываемый, вскрывать )
 наст( вспарываемый, вспарывать )
 наст( вспахиваемый,вспахивать )
 наст( втираемый, втирать )
 наст( втыкаемый, втыкать )
 наст( вываливаемый, вываливать )
 наст( вывешиваемый, вывешивать )
 наст( выворачиваемый, выворачивать )
 наст( выговариваемый, выговаривать )
 наст( выгоняемый, выгонять )
 наст( выгуливаемый, выгуливать )
 наст( выдавливаемый, выдавливать )
 наст( выдворяемый, выдворять )
 наст( выдергиваемый, выдергивать )
 наст( выдумываемый, выдумывать )
 наст( выедаемый, выедать )
 наст( выжигаемый, выжигать )
 наст( выжимаемый, выжимать )
 наст( выигрываемый, выигрывать )
 наст( выкапываемый, выкапывать )
 наст( выкладываемый, выкладывать )
 наст( выкликаемый, выкликать, НЕСОВЕРШ )
 наст( выключаемый, выключать )
 наст( выковываемый, выковывать )
 наст( выколачиваемый, выколачивать )
 наст( выламываемый, выламывать )
 наст( выливаемый, выливать )
 наст( вымогаемый, вымогать )
 наст( вымываемый, вымывать )
 наст( выпекаемый, выпекать )
 наст( выплавляемый, выплавлять )
 наст( выплевываемый, выплевывать )
 наст( выплескиваемый, выплескивать )
 наст( выплетаемый, выплетать )
 наст( выпячиваемый, выпячивать )
 наст( вырезаемый, вырезать, НЕСОВЕРШ )
 наст( высаживаемый, высаживать )
 наст( высасываемый, высасывать )
 наст( выселяемый, выселять )
 наст( высиживаемый, высиживать )
 прил( высокозначимый )
 прил( высокопочитаемый )
 прил( высокоценимый )
 наст( выспрашиваемый, выспрашивать )
 наст( выстраиваемый, выстраивать )
 наст( выстреливаемый, выстреливать )
 наст( выстукиваемый, выстукивать )
 наст( высушиваемый, высушивать )
 наст( высыпаемый, высыпать, НЕСОВЕРШ )
 наст( вытворяемый, вытворять )
 наст( вытираемый, вытирать )
 наст( вычленяемый, вычленять )
 наст( вышибаемый, вышибать )
 наст( гоняемый, гонять )
 прил( гормонозависимый )
 наст( громимый, громить )
 наст( группируемый, группировать )
 наст( дактилоскопируемый, дактилоскопировать, НЕСОВЕРШ )
 наст( декламируемый, декламировать )
 наст( декомпилируемый, декомпилировать, НЕСОВЕРШ )
 наст( делегируемый, делегировать, НЕСОВЕРШ )
 наст( демобилизуемый, демобилизовать, НЕСОВЕРШ )
 наст( демонтируемый, демонтировать, НЕСОВЕРШ )
 наст( дергаемый, дергать )
 наст( десантируемый, десантировать, НЕСОВЕРШ )
 наст( детерминируемый, детерминировать )
 наст( дешифруемый, дешифровать )
 наст( дирижируемый, дирижировать )
 наст( дискриминируемый, дискриминировать )
 наст( дискутируемый, дискутировать )
 наст( дисциплинируемый, дисциплинировать )
 наст( дифференцируемый, дифференцировать )
 наст( добиваемый, добивать )
 наст( догоняемый, догонять )
 наст( доедаемый, доедать )
 наст( дозволяемый, дозволять )
 наст( дозируемый, дозировать )
 наст( донашиваемый, донашивать )
 наст( допекаемый, допекать )
 наст( досматриваемый, досматривать )
 наст( дрессируемый, дрессировать )
 наст( дублируемый, дублировать )
 прил( жаронепроницаемый )
 наст( жертвуемый, жертвовать )
 прил( жирорастворимый )
 наст( завариваемый, заваривать )
 наст( заверяемый, заверять )
 наст( завещаемый, завещать, НЕСОВЕРШ )
 наст( завоевываемый, завоевывать )
 наст( заволакиваемый, заволакивать )
 наст( завязываемый, завязывать )
 наст( загибаемый, загибать )
 наст( заглатываемый, заглатывать )
 наст( заготовляемый, заготовлять )
 наст( загружаемый, загружать )
 наст( задеваемый, задевать )
 наст( заделываемый, заделывать )
 наст( задергиваемый, задергивать )
 наст( задраиваемый, задраивать )
 наст( заедаемый, заедать )
 наст( зажимаемый, зажимать )
 наст( заказываемый, заказывать )
 наст( закалываемый, закалывать )
 наст( закатываемый, закатывать )
 наст( заклинаемый, заклинать )
 наст( закручиваемый, закручивать )
 наст( заметаемый, заметать )
 наст( замораживаемый, замораживать )
 наст( запасаемый, запасать )
 наст( запекаемый, запекать )
 наст( запечатлеваемый, запечатлевать )
 наст( запечатываемый, запечатывать )
 наст( запиваемый, запивать )
 прил( заполнимый )
 наст( запрещаемый, запрещать )
 наст( запрягаемый, запрягать )
 наст( заражаемый, заражать )
 наст( засеваемый, засевать )
 наст( засекаемый, засекать )
 наст( засекречиваемый, засекречивать )
 наст( застегиваемый, застегивать )
 наст( застилаемый, застилать )
 наст( засыпаемый, засыпать, НЕСОВЕРШ )
 наст( заталкиваемый, заталкивать )
 наст( затапливаемый, затапливать )
 наст( затаптываемый, затаптывать )
 наст( затачиваемый, затачивать )
 наст( затворяемый, затворять )
 наст( затеняемый, затенять )
 наст( затираемый, затирать )
 наст( затмеваемый, затмевать )
 наст( затрудняемый, затруднять )
 наст( заучиваемый, заучивать )
 прил( звукопроницаемый )
 наст( зондируемый, зондировать )
 наст( играемый, играть )
 наст( идеализируемый, идеализировать )
 наст( извещаемый, извещать )
 наст( изгибаемый, изгибать )
 наст( издерживаемый, издерживать )
 наст( изживаемый, изживать )
 наст( измышляемый, измышлять )
 наст( изнуряемый, изнурять )
 наст( изобличаемый, изобличать )
 наст( изолируемый, изолировать, НЕСОВЕРШ )
 наст( изрекаемый, изрекать )
 прил( изъяснимый )
 наст( иллюстрируемый, иллюстрировать )
 наст( имплантируемый, имплантировать, НЕСОВЕРШ )
 наст( имплицируемый, имплицировать )
 наст( индуцируемый, индуцировать, НЕСОВЕРШ )
 наст( иннервируемый, иннервировать )
 наст( инспектируемый, инспектировать )
 наст( инспирируемый, инспирировать, НЕСОВЕРШ )
 наст( инфицируемый, инфицировать )
 наст( искажаемый, искажать )
 наст( искореняемый, искоренять )
 наст( искупаемый, искупать, НЕСОВЕРШ )
 наст( испаряемый, испарять )
 наст( иссекаемый, иссекать )
 наст( истолковываемый, истолковывать )
 прил( истребимый )
 наст( истребуемый, истребовать, НЕСОВЕРШ )
 наст( исцеляемый, исцелять )
 наст( исчерпываемый, исчерпывать )
 наст( катаемый, катать )
 наст( катализируемый, катализировать, НЕСОВЕРШ )
 наст( катапультируемый, катапультировать, НЕСОВЕРШ )
 наст( клонимый, клонить )
 наст( кодируемый, кодировать )
 наст( колонизуемый, колонизовать )
 наст( колыхаемый, колыхать )
 наст( комбинируемый, комбинировать )
 наст( комплектуемый, комплектовать )
 наст( кондиционируемый, кондиционировать )
 наст( консервируемый, консервировать )
 наст( конспектируемый, конспектировать )
 наст( констатируемый, констатировать )
 наст( конституируемый, конституировать )
 наст( конфискуемый, конфисковать, НЕСОВЕРШ )
 наст( кончаемый, кончать )
 наст( копируемый, копировать )
 наст( кормимый, кормить )
 наст( коронуемый, короновать, НЕСОВЕРШ )
 наст( кромсаемый, кромсать )
 наст( крышуемый, крышевать )
 прил( легковнушаемый )
 прил( легковыполнимый )
 прил( легкодостижимый )
 прил( легкообрабатываемый )
 прил( легкообъяснимый )
 прил( легкоперевариваемый )
 прил( легкопроходимый )
 прил( легкоразличимый )
 прил( легкорастворимый )
 прил( легкоузнаваемый )
 прил( легкоуправляемый )
 прил( легкоусваиваемый )
 прил( легкоусвояемый )
 прил( легкоустранимый )
 прил( легкоуязвимый )
 наст( лишаемый, лишать )
 наст( лоббируемый, лоббировать )
 наст( локализуемый, локализовать, НЕСОВЕРШ )
 прил( маловменяемый )
 прил( малоиспользуемый )
 прил( малообитаемый )
 прил( малообъяснимый )
 прил( малоосуществимый )
 прил( малоотличимый )
 прил( малоощутимый )
 прил( малопосещаемый )
 прил( малопредсказуемый )
 прил( малопроходимый )
 прил( малоразличимый )
 прил( малосовместимый )
 прил( малоуправляемый )
 прил( малоуязвимый )
 прил( машиночитаемый )
 наст( модулируемый, модулировать )
 наст( мучаемый, мучить )
 наст( набиваемый, набивать )
 наст( набрасываемый, набрасывать )
 наст( навешиваемый, навешивать )
 наст( навещаемый, навещать )
 наст( навлекаемый, навлекать )
 наст( нагоняемый, нагонять )
 наст( нагромождаемый, нагромождать )
 наст( нагружаемый, нагружать )
 наст( нажимаемый, нажимать )
 наст( наигрываемый, наигрывать )
 наст( накаливаемый, накаливать )
 наст( накаляемый, накалять )
 наст( накидываемый, накидывать )
 наст( наклеиваемый, наклеивать )
 наст( наклоняемый, наклонять )
 наст( налаживаемый, налаживать )
 наст( наматываемый, наматывать )
 наст( наметаемый, наметать )
 наст( нанизываемый, нанизывать )
 наст( напеваемый, напевать )
 наст( напрягаемый, напрягать )
 наст( напускаемый, напускать )
 наст( насаживаемый, насаживать )
 наст( насвистываемый, насвистывать )
 наст( насиживаемый, насиживать )
 наст( настаиваемый, настаивать )
 наст( насыпаемый, насыпать, НЕСОВЕРШ )
 наст( натачиваемый, натачивать )
 наст( натираемый, натирать )
 наст( натравливаемый, натравливать )
 наст( наущаемый, наущать )
 наст( нахлестываемый, нахлестывать )
 наст( начинаемый, начинать )
 наст( нащупываемый, нащупывать )
 прил( незначимый )
 прил( незыблимый )
 наст( обвеваемый, обвевать )
 наст( обдираемый, обдирать )
 наст( обертываемый, обертывать )
 наст( обещаемый, обещать )
 наст( обжалуемый, обжаловать, НЕСОВЕРШ )
 наст( обживаемый, обживать )
 наст( обираемый, обирать )
 наст( обкрадываемый, обкрадывать )
 наст( обламываемый, обламывать )
 наст( облегаемый, облегать )
 наст( облекаемый, облекать )
 наст( обливаемый, обливать )
 наст( обманываемый, обманывать )
 наст( обмываемый, обмывать )
 наст( обнажаемый, обнажать )
 наст( обобщаемый, обобщать )
 наст( обогащаемый, обогащать )
 наст( обоготворяемый, обоготворять )
 наст( обольщаемый, обольщать )
 наст( оборудуемый, оборудовать, НЕСОВЕРШ )
 наст( обосновываемый, обосновывать )
 наст( обостряемый, обострять )
 наст( обрекаемый, обрекать )
 наст( обрушиваемый, обрушивать )
 наст( обрываемый, обрывать )
 наст( обсыпаемый, обсыпать, НЕСОВЕРШ )
 наст( обуздываемый, обуздывать )
 прил( общеупотребимый )
 наст( объективируемый, объективировать, НЕСОВЕРШ )
 наст( оглядываемый, оглядывать )
 наст( огорчаемый, огорчать )
 наст( ограбляемый, ограблять )
 наст( ограждаемый, ограждать )
 наст( одариваемый, одаривать )
 наст( одеваемый, одевать )
 наст( одерживаемый, одерживать )
 наст( озлобляемый, озлоблять )
 наст( окатываемый, окатывать )
 наст( окликаемый, окликать )
 наст( окрашиваемый, окрашивать )
 наст( окуриваемый, окуривать )
 наст( опережаемый, опережать )
 наст( оплевываемый, оплевывать )
 наст( опорожняемый, опорожнять )
 наст( опробуемый, опробовать, НЕСОВЕРШ )
 наст( ориентируемый, ориентировать )
 наст( осаживаемый, осаживать )
 наст( освидетельствуемый, освидетельствовать, НЕСОВЕРШ )
 наст( освящаемый, освящать )
 наст( осеняемый, осенять )
 наст( осмеиваемый, осмеивать )
 наст( осмысливаемый, осмысливать )
 наст( осмысляемый, осмыслять )
 наст( основываемый, основывать )
 наст( отбываемый, отбывать )
 наст( отвешиваемый, отвешивать )
 наст( отвинчиваемый, отвинчивать )
 наст( отдираемый, отдирать )
 наст( отжимаемый, отжимать )
 наст( откатываемый, откатывать )
 наст( откидываемый, откидывать )
 наст( отклоняемый, отклонять )
 наст( отлавливаемый, отлавливать )
 наст( отливаемый, отливать )
 наст( отлучаемый, отлучать )
 наст( отмеряемый, отмерять, НЕСОВЕРШ )
 наст( отметаемый, отметать, НЕСОВЕРШ )
 наст( отпихиваемый, отпихивать )
 наст( отпугиваемый, отпугивать )
 наст( отрабатываемый, отрабатывать )
 наст( отравляемый, отравлять )
 наст( отращиваемый, отращивать )
 наст( отрезаемый, отрезать, НЕСОВЕРШ )
 наст( отрубаемый, отрубать )
 наст( отряжаемый, отряжать )
 наст( отсеиваемый, отсеивать )
 наст( отсекаемый, отсекать )
 наст( отставляемый, отставлять )
 наст( отстегиваемый, отстегивать )
 наст( отстраиваемый, отстраивать )
 наст( отстреливаемый, отстреливать )
 наст( отсылаемый, отсылать )
 наст( оттаскиваемый, оттаскивать )
 наст( оттачиваемый, оттачивать )
 наст( оттеняемый, оттенять )
 наст( оттираемый, оттирать )
 наст( отторгаемый, отторгать )
 наст( отхаркиваемый, отхаркивать )
 наст( отыскиваемый, отыскивать )
 наст( очерчиваемый, очерчивать )
 наст( очищаемый, очищать )
 наст( патронируемый, патронировать )
 наст( пеленгуемый, пеленговать )
 наст( перевертываемый, перевертывать )
 наст( перевиваемый, перевивать )
 прил( перевоспитуемый )
 наст( перегрызаемый, перегрызать )
 наст( переделываемый, переделывать )
 наст( пережевываемый, пережевывать )
 наст( перезаряжаемый, перезаряжать )
 наст( переизбираемый, переизбирать )
 наст( переиздаваемый, переиздавать )
 наст( перекатываемый, перекатывать )
 наст( перекачиваемый, перекачивать )
 наст( перекидываемый, перекидывать )
 наст( перекладываемый, перекладывать )
 наст( перекусываемый, перекусывать )
 наст( переламываемый, переламывать )
 наст( переливаемый, переливать )
 наст( перемываемый, перемывать )
 наст( переписываемый, переписывать )
 наст( перерезаемый, перерезать, НЕСОВЕРШ )
 наст( пересказываемый, пересказывать )
 наст( переставляемый, переставлять )
 наст( пересчитываемый, пересчитывать )
 наст( перетаскиваемый, перетаскивать )
 наст( перетираемый, перетирать )
 наст( перечитываемый, перечитывать )
 наст( персонифицируемый, персонифицировать )
 наст( повергаемый, повергать )
 наст( поверяемый, поверять )
 наст( повреждаемый, повреждать )
 наст( погребаемый, погребать )
 наст( подбодряемый, подбодрять )
 наст( подвешиваемый, подвешивать )
 наст( подводимый, подводить )
 наст( подвозимый, подвозить )
 наст( подвязываемый, подвязывать )
 наст( поддуваемый, поддувать )
 наст( поджигаемый, поджигать )
 наст( поджидаемый, поджидать )
 наст( поджимаемый, поджимать )
 наст( подливаемый, подливать )
 наст( подмечаемый, подмечать )
 наст( подмешиваемый, подмешивать )
 наст( подминаемый, подминать )
 наст( подмываемый, подмывать )
 наст( подначиваемый, подначивать )
 наст( пододвигаемый, пододвигать )
 наст( подпихиваемый, подпихивать )
 наст( подражаемый, подражать )
 наст( подразделяемый, подразделять )
 наст( подрываемый, подрывать )
 наст( подсаживаемый, подсаживать )
 наст( подсказываемый, подсказывать )
 наст( подстилаемый, подстилать )
 наст( подстригаемый, подстригать )
 наст( подсчитываемый, подсчитывать )
 наст( подсылаемый, подсылать )
 наст( подшиваемый, подшивать )
 наст( пожимаемый, пожимать )
 наст( покачиваемый, покачивать )
 наст( покоряемый, покорять )
 наст( помыкаемый, помыкать )
 наст( поправляемый, поправлять )
 наст( порабощаемый, порабощать )
 наст( поселяемый, поселять )
 наст( постановляемый, постановлять )
 наст( постригаемый, постригать )
 наст( посыпаемый, посыпать, НЕСОВЕРШ )
 наст( поторапливаемый, поторапливать )
 наст( поучаемый, поучать )
 наст( поясняемый, пояснять )
 наст( превышаемый, превышать )
 наст( предвещаемый, предвещать )
 наст( предостерегаемый, предостерегать )
 наст( предохраняемый, предохранять )
 наст( предупреждаемый, предупреждать )
 наст( предчувствуемый, предчувствовать )
 наст( преломляемый, преломлять )
 наст( прельщаемый, прельщать )
 наст( премируемый, премировать, НЕСОВЕРШ )
 наст( преображаемый, преображать )
 наст( препарируемый, препарировать )
 наст( привечаемый, привечать )
 наст( прививаемый, прививать )
 наст( пригибаемый, пригибать )
 наст( пригоняемый, пригонять )
 наст( приготавливаемый, приготовлять )
 наст( пригреваемый, пригревать )
 наст( прикармливаемый, прикармливать )
 наст( прикладываемый, прикладывать )
 наст( приклеиваемый, приклеивать )
 наст( прикрепляемый, прикреплять )
 наст( приманиваемый, приманивать )
 наст( примеряемый, примерять )
 наст( приобщаемый, приобщать )
 наст( приоткрываемый, приоткрывать )
 наст( припоминаемый, припоминать )
 наст( приспособляемый, приспособлять )
 наст( приставляемый, приставлять )
 наст( приучаемый, приучать )
 наст( причисляемый, причислять )
 наст( пришиваемый, пришивать )
 наст( пришпориваемый, пришпоривать )
 наст( пробегаемый, пробегать, НЕСОВЕРШ )
 наст( пробуемый, пробовать )
 наст( проворачиваемый, проворачивать )
 наст( проглатываемый, проглатывать )
 наст( прогрызаемый, прогрызать )
 наст( продеваемый, продевать )
 наст( проезжаемый, проезжать )
 наст( прожигаемый, прожигать )
 наст( прозреваемый, прозревать )
 наст( прокручиваемый, прокручивать )
 наст( пролагаемый, пролагать )
 наст( проламываемый, проламывать )
 наст( промываемый, промывать )
 наст( прорежаемый, прорежать )
 наст( прорубаемый, прорубать )
 наст( прорываемый, прорывать )
 наст( просвещаемый, просвещать )
 наст( проталкиваемый, проталкивать )
 наст( протаскиваемый, протаскивать )
 наст( протежируемый, протежировать )
 наст( протираемый, протирать )
 наст( протыкаемый, протыкать )
 наст( прочерчиваемый, прочерчивать )
 наст( прочесываемый, прочесывать )
 наст( прочитываемый, прочитывать )
 наст( прочищаемый, прочищать )
 наст( прошибаемый, прошибать )
 наст( прошиваемый, прошивать )
 наст( проясняемый, прояснять )
 наст( разбавляемый, разбавлять )
 наст( разбрызгиваемый, разбрызгивать )
 наст( разведываемый, разведывать )
 наст( развлекаемый, развлекать )
 наст( развозимый, развозить )
 наст( развращаемый, развращать )
 наст( развязываемый, развязывать )
 наст( разгадываемый, разгадывать )
 наст( разглашаемый, разглашать )
 наст( разграбляемый, разграблять )
 наст( разграничиваемый, разграничивать )
 наст( разгребаемый, разгребать )
 наст( разгружаемый, разгружать )
 наст( раздавливаемый, раздавливать )
 наст( раздеваемый, раздевать )
 наст( разделываемый, разделывать )
 наст( раздражаемый, раздражать )
 наст( раздробляемый, раздроблять )
 наст( разлагаемый, разлагать )
 наст( разламываемый, разламывать )
 наст( размалываемый, размалывать )
 наст( разматываемый, разматывать )
 наст( размениваемый, разменивать )
 наст( разминаемый, разминать )
 наст( размыкаемый, размыкать )
 прил( разноспрягаемый )
 наст( разоблачаемый, разоблачать )
 наст( разоружаемый, разоружать )
 наст( разрубаемый, разрубать )
 наст( разряжаемый, разряжать )
 наст( разъединяемый, разъединять )
 наст( разъясняемый, разъяснять )
 наст( раскалываемый, раскалывать )
 наст( раскладываемый, раскладывать )
 наст( раскулачиваемый, раскулачивать )
 наст( раскупаемый, раскупать )
 наст( раскуриваемый, раскуривать )
 наст( распарываемый, распарывать )
 наст( распахиваемый, распахивать )
 наст( распекаемый, распекать )
 наст( распиливаемый, распиливать )
 наст( расписываемый, расписывать )
 наст( расплавляемый, расплавлять )
 наст( расплескиваемый, расплескивать )
 наст( расправляемый, расправлять )
 наст( распродаваемый, распродавать )
 наст( расселяемый, расселять )
 наст( расспрашиваемый, расспрашивать )
 наст( расстилаемый, расстилать )
 наст( расталкиваемый, расталкивать )
 наст( растапливаемый, растапливать )
 наст( растаптываемый, растаптывать )
 наст( растаскиваемый, растаскивать )
 наст( растворяемый, растворять )
 наст( растираемый, растирать )
 наст( растлеваемый, растлевать )
 наст( растравляемый, растравлять )
 наст( растрачиваемый, растрачивать )
 наст( расхваливаемый, расхваливать )
 наст( расчесываемый, расчесывать )
 наст( расчищаемый, расчищать )
 наст( расчленяемый, расчленять )
 наст( расшифровываемый, расшифровывать )
 наст( рационализируемый, рационализировать, НЕСОВЕРШ )
 наст( реабилитируемый, реабилитировать, НЕСОВЕРШ )
 наст( реанимируемый, реанимировать, НЕСОВЕРШ )
 наст( регенерируемый, регенерировать, НЕСОВЕРШ )
 наст( рекрутируемый, рекрутировать, НЕСОВЕРШ )
 наст( репетируемый, репетировать )
 наст( репрессируемый, репрессировать, НЕСОВЕРШ )
 наст( реставрируемый, реставрировать, НЕСОВЕРШ )
 наст( ретранслируемый, ретранслировать, НЕСОВЕРШ )
 наст( реэкспортируемый, реэкспортировать, НЕСОВЕРШ )
 наст( сажаемый, сажать )
 прил( самообучаемый )
 прил( самопрограммируемый )
 наст( санкционируемый, санкционировать, НЕСОВЕРШ )
 наст( сваливаемый, сваливать )
 прил( сверхвозбудимый )
 прил( сверхзначимый )
 прил( свободноконвертируемый )
 прил( связуемый )
 наст( сглаживаемый, сглаживать )
 наст( сгоняемый, сгонять, НЕСОВЕРШ )
 наст( сгружаемый, сгружать )
 наст( сдабриваемый, сдабривать )
 наст( сдираемый, сдирать )
 наст( секретируемый, секретировать, НЕСОВЕРШ )
 наст( симулируемый, симулировать )
 наст( скандируемый, скандировать )
 наст( сканируемый, сканировать )
 наст( скармливаемый, скармливать )
 наст( скатываемый, скатывать )
 наст( скашиваемый, скашивать )
 наст( складируемый, складировать )
 наст( склеиваемый, склеивать )
 наст( сколачиваемый, сколачивать )
 наст( скрадываемый, скрадывать )
 наст( скрепляемый, скреплять )
 наст( скрещиваемый, скрещивать )
 наст( скручиваемый, скручивать )
 прил( слаборазличимый )
 наст( смазываемый, смазывать )
 наст( смакуемый, смаковать )
 наст( сматываемый, сматывать )
 наст( смачиваемый, смачивать )
 наст( смещаемый, смещать )
 наст( снаряжаемый, снаряжать )
 наст( совмещаемый, совмещать )
 наст( совращаемый, совращать )
 наст( сопрягаемый, сопрягать )
 прил( спирторастворимый )
 наст( сплавляемый, сплавлять )
 наст( сплетаемый, сплетать )
 наст( сплющиваемый, сплющивать )
 наст( справляемый, справлять )
 наст( ссыпаемый, ссыпать, НЕСОВЕРШ )
 наст( сталкиваемый, сталкивать )
 наст( стаскиваемый, стаскивать )
 наст( стилизуемый, стилизовать )
 наст( стискиваемый, стискивать )
 наст( стыкуемый, стыковать )
 наст( стягиваемый, стягивать )
 наст( схватываемый, схватывать )
 наст( сшиваемый, сшивать )
 наст( тасуемый, тасовать )
 наст( телепортируемый, телепортировать, НЕСОВЕРШ )
 прил( теплонепроницаемый )
 наст( терроризируемый, терроризировать )
 наст( тормозимый, тормозить )
 наст( трансплантируемый, трансплантировать )
 наст( трансформируемый, трансформировать )
 наст( тренируемый, тренировать )
 наст( третируемый, третировать )
 прил( трудновозбудимый )
 прил( трудновыговариваемый )
 прил( трудновыразимый )
 прил( труднодосягаемый )
 прил( трудноисполнимый )
 прил( трудноисправимый )
 прил( трудноописуемый )
 прил( трудноразличимый )
 прил( труднорастворимый )
 прил( трудносмываемый )
 прил( трудноузнаваемый )
 наст( ублажаемый, ублажать )
 наст( увлажняемый, увлажнять )
 наст( уволакиваемый, уволакивать )
 наст( углубляемый, углублять )
 наст( уговариваемый, уговаривать )
 наст( угощаемый, угощать )
 прил( удобопроизносимый )
 наст( удобряемый, удобрять )
 наст( удостаиваемый, удостаивать )
 наст( укладываемый, укладывать )
 наст( украшаемый, украшать )
 наст( укрощаемый, укрощать )
 наст( умалчиваемый, умалчивать )
 наст( умерщвляемый, умервщлять )
 наст( уничтожимый, уничтожать )
 наст( уподобляемый, уподоблять )
 наст( упорядочиваемый, упорядочивать )
 наст( упражняемый, упражнять )
 наст( упраздняемый, упразднять )
 наст( упрекаемый, упрекать )
 наст( упускаемый, упускать )
 наст( усматриваемый, усматривать )
 наст( успокаиваемый, успокаивать )
 наст( устрашаемый, устрашать )
 наст( утилизируемый, утилизировать )
 наст( утоляемый, утолять )
 наст( утомляемый, утомлять )
 наст( уточняемый, уточнять )
 наст( утягиваемый, утягивать )
 наст( уязвляемый, уязвлять )
 наст( фабрикуемый, фабриковать )
 наст( фокусируемый, фокусировать )
 наст( фондируемый, фондировать )
 наст( формуемый, формовать )
 наст( фотографируемый, фотографировать )
 наст( целуемый, целовать )
 наст( черпаемый, черпать )
 наст( чествуемый, чествовать )
 наст( штурмуемый, штурмовать )
 наст( экранируемый, экранировать )
 наст( эксплицируемый, эксплицировать, НЕСОВЕРШ )
 наст( экспонируемый, экспонировать )
 наст( экспроприируемый, экспроприировать, НЕСОВЕРШ )
 наст( этапируемый, этапировать, НЕСОВЕРШ )

 прош( измолотый, измолоть )
 прош( надколотый, надколоть )
 прош( отогретый, отогреть )
 прош( отпитый, отпить )
 прош( отпоротый, отпороть )
 прош( перепетый, перепеть )
 прош( ужатый, ужать )
 прош( прополотый, прополоть )

}