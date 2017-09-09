﻿// --------------------------------------------------------
// Сочетаемость существительного и правого дополнения в
// виде существительного, обычно в родительном падеже
// --------------------------------------------------------

facts сущ_сущ language=Russian
{
 arity=2
 return=integer
}

// --------------------------------------

// Поклонение святым приобрело грандиозные масштабы;
fact сущ_сущ
{
 if context { существительное:поклонение{} прилагательное:святой{ падеж:дат } }
  then return 5
}


// Написать главу диплома
fact сущ_сущ { if context { существительное:глава{ одуш:неодуш } существительное:диплом{ падеж:род } } then return 2 }

// В Смоленской обл. глава сельского поселения подозревается во взятке
fact сущ_сущ { if context { существительное:глава{ одуш:одуш } существительное:поселение{ падеж:род } } then return 2 }

// Главы архангельских муниципалитетов отправились в Скандинавию для обмена опытом
// ^^^^^               ^^^^^^^^^^^^^^^              
fact сущ_сущ { if context { существительное:глава{ одуш:одуш } существительное:муниципалитет{ падеж:род } } then return 2 }

// Глава администрации Перми встретился с родственниками погибших в авиакатастрофе
// ^^^^^^^^^^^^^^^^^^^
fact сущ_сущ { if context { существительное:глава{ одуш:одуш } существительное:администрация{ падеж:род } } then return 2 }

// Главы осетинских республик провели рабочую встречу
fact сущ_сущ { if context { существительное:глава{ одуш:одуш } существительное:республика{ падеж:род } } then return 2 }

// Штаб возглавил первый заместитель главы Екатеринбурга Виталий Смирнов.
//                       ^^^^^^^^^^^^^^^^^
fact сущ_сущ
{
 if context { существительное:заместитель{} существительное:глава{ одуш:одуш } }
  then return 2
}


// Все суета сует!
//     ^^^^^^^^^^
fact сущ_сущ
{
 if context { существительное:суета{} существительное:суета{ число:мн } }
  then return 10
}


// Кто будет главой МИД Литвы.
//           ^^^^^^^^^^
fact сущ_сущ
{
 if context { существительное:глава{ одуш:одуш род:муж } существительное:МИД{ падеж:род } }
  then return 2
}


// главы субъектов не просто отрапортовывали в Москве
fact сущ_сущ { if context { существительное:глава{ одуш:одуш } существительное:субъект{ падеж:род } } then return 2 }

// глава Бюро по борьбе с наркотиками
fact сущ_сущ { if context { существительное:глава{ одуш:одуш } существительное:бюро{ падеж:род } } then return 2 }

// Пакистанский суд постановил арестовать главу правительства
fact сущ_сущ { if context { существительное:глава{ одуш:одуш } существительное:правительство{ падеж:род } } then return 2 }

// Администрация главы государства эти обвинения отвергает
fact сущ_сущ { if context { существительное:глава{ одуш:одуш } существительное:государство{ падеж:род } } then return 2 }

// Глава Верховного суда предлагает декриминализировать мелкие преступления
fact сущ_сущ { if context { существительное:глава{ одуш:одуш } существительное:суд{ падеж:род } } then return 2 }

// Он занял эту должность по представлению главы министерства.
fact сущ_сущ { if context { существительное:глава{ одуш:одуш } существительное:министерство{ падеж:род } } then return 2 }

// Сенат США отложил утверждение кандидатуры главы Пентагона
fact сущ_сущ { if context { существительное:глава{ одуш:одуш } существительное:пентагон{ падеж:род } } then return 2 }

// Блогеры нашли у главы думской комиссии по этике "тайную" недвижимость в Майами
fact сущ_сущ { if context { существительное:глава{ одуш:одуш } существительное:комиссия{ падеж:род } } then return 2 }

// Встреча глав МИД РФ и Сирии в Москве намечена на 25 февраля
fact сущ_сущ { if context { существительное:глава{ одуш:одуш } существительное:МИД{ падеж:род } } then return 2 }

// Назначать главу ведомства будет премьер-министр.
fact сущ_сущ { if context { существительное:глава{ одуш:одуш } существительное:ведомство{ падеж:род } } then return 2 }

// Судя по выражению лица незнакомца,    название это ему ни о чем не говорило, хотя его облик до последней черточки    соответствовал земному.
fact сущ_сущ { if context { существительное:выражение{} существительное:лицо{ одуш:неодуш } } then return 5 }



// назначить в совет директоров
fact сущ_сущ
{
 if context { существительное:совет{} существительное:директор{ род:муж падеж:род число:мн } }
  then return 2
}

// его используют для ополаскивания лица и приготовления различных косметических масок
//                    ^^^^^^^^^^^^^^^^^^
fact сущ_сущ
{
 if context { существительное:ополаскивание{} существительное:лицо{ одуш:неодуш } }
  then return 2
}

// доказательств тому имелась масса.
// ^^^^^^^^^^^^^^^^^^
fact сущ_сущ
{
 if context { существительное:доказательство{} местоим_сущ:то{ падеж:дат } }
  then return 2
}

fact сущ_сущ
{
 if context { существительное:стакан{} существительное:чай{ падеж:парт } }
  then return 5
}


// Был членом Национального совета Сопротивления.
fact сущ_сущ
{
 if context { существительное:член{ одуш:одуш } существительное:совет{} }
  then return 5
}

// Члены административного комитета рекомендовали программу для дальнейшего рассмотрения.
fact сущ_сущ
{
 if context { существительное:член{ одуш:одуш } существительное:комитет{} }
  then return 5
}


// Никакой угрозы окружающим они не представляли.
//         ^^^^^^^^^^^^^^^^^
fact сущ_сущ
{
 if context { существительное:угроза{} прилагательное:окружающий{ число:мн падеж:дат } }
  then return 5
}


fact сущ_сущ
{
 if context { существительное:член{ одуш:одуш } существительное:группировка{} }
  then return 5
}


// Окажу помощь учащимся высших учебных заведений.
fact сущ_сущ
{
 if context { существительное:помощь{} прилагательное:учащийся{ падеж:дат } }
  then return 5
}

// Резкий запах спиртного разлился по комнате.
//        ^^^^^^^^^^^^^^^
fact сущ_сущ
{
 if context { существительное:запах{} прилагательное:спиртной{ падеж:род число:ед род:ср } }
  then return 5
}


// Лечебная доза спиртного определяется массой тела.
fact сущ_сущ
{
 if context { существительное:доза{} прилагательное:спиртной{ падеж:род число:ед род:ср } }
  then return 5
}


// Гарри наливал себе очередную порцию спиртного.
fact сущ_сущ
{
 if context { существительное:порция{} прилагательное:спиртной{ падеж:род число:ед род:ср } }
  then return 5
}

// Каждый накупил наиболее симпатичные бутылки спиртного.
fact сущ_сущ
{
 if context { существительное:бутылка{} прилагательное:спиртной{ падеж:род число:ед род:ср } }
  then return 5
}

// Вскоре появились первые девять судов присяжных.
fact сущ_сущ
{
 if context { существительное:суд{} прилагательное:присяжный{ падеж:род число:мн } }
  then return 5
}

// По пути запаслись солидным количеством спиртного.
fact сущ_сущ
{
 if context { существительное:количество{} прилагательное:спиртной{ падеж:род число:ед род:ср } }
  then return 5
}

// Монополия повысит конкурентоспособность легальных производителей спиртного.
fact сущ_сущ
{
 if context { существительное:производитель{} прилагательное:спиртной{ падеж:род число:ед род:ср } }
  then return 5
}

// Рекомендуется учащимся средних и старших классов.
fact сущ_сущ
{
 if context { прилагательное:учащийся{} существительное:класс{ падеж:род } }
  then return 5
}

// Ее подготовили учащиеся Калязинской художественной школы.
fact сущ_сущ
{
 if context { прилагательное:учащийся{} существительное:школа{ падеж:род } }
  then return 5
}

// Поэтому излишек продали учащимся младших курсов.
fact сущ_сущ
{
 if context { прилагательное:учащийся{} существительное:курс{ падеж:род } }
  then return 5
}

// Заключенные воспитательных колоний играют в КВН.
fact сущ_сущ
{
 if context { прилагательное:заключенный{} существительное:колония{ падеж:род } }
  then return 5
}



// Особенно часто ошибаются ведущие религиозных передач.
//                          ^^^^^^^             ^^^^^^^
fact сущ_сущ
{
 if context { прилагательное:ведущий{} существительное:передача{ падеж:род } }
  then return 5
}

// Например, поработать ведущей спортивных новостей.
fact сущ_сущ
{
 if context { прилагательное:ведущий{} существительное:новость{ падеж:род } }
  then return 5
}

// Капитан судна утонул.
// ^^^^^^^^^^^^^
fact сущ_сущ
{
 if context { существительное:капитан{} существительное:судно{ падеж:род OMONYM_RESOLUTION:2 } }
  then return -100
}

// -------------------------------------------------------

// Управление правым существительным в родительном падеже.
#define СущСущ(n1,n2,w) \
#begin
fact сущ_сущ
{
 if context { существительное:n1{} существительное:n2{ падеж:род } }
  then return w
}
#end


СущСущ(недержание,моча,5) // Его главной бедой было недержание мочи.
СущСущ(ношение,оружие,5) // Его обвиняют в незаконном ношении оружия.
СущСущ(ознаменование,годовщина,5) // Его установили в ознаменование годовщины Победы.
СущСущ(решение,суд,5) // Его решением суда взяли под стражу.
СущСущ(состав,преступление,5) // Его закрыли за отсутствием состава преступления.
СущСущ(съезд,партия,5) // Его кандидатуру выдвинули на съезде партии.
СущСущ(статья,газета,5) // Его усмотрели в нескольких статьях газеты.
СущСущ(район,город,5) // Его обустраивают в Железнодорожном районе города.
СущСущ(посетитель,парк,5) // Его чуть позже обнаружили посетители парка.
СущСущ(отдел,полиция,5) // Его доставили в 20-й отдел полиции.
СущСущ(порог,дом,5) // Его оставили на пороге вашего дома.
СущСущ(стадо,корова,5) // Через село гнали стадо коров и овец.
СущСущ(количество,моча,5) // Уменьшение количества мочи или полное ее отсутствие.
СущСущ(начало,болезнь,5) // Начало болезни, как правило, постепенное.
СущСущ(начало,заболевание,5) // Начало заболевания острое, часто наблюдается моноартрит.
СущСущ(выделение,моча,5) // После мочеиспускания постоянное выделение мочи по каплям.
СущСущ(недержание,моча,5) // Недержание мочи у детей из-за слабости сфинктеров.
СущСущ(куча,дело,5) // А у нее еще куча дел.
СущСущ(белок,плазма,5) // 96% резерпина связывается с белками плазмы.
СущСущ(обхват,грудь,5) // 85% обхвата груди дают обхват бедер.
СущСущ(двор,дом,5) // 23-летнего Спартака похоронили во дворе дома.
СущСущ(факт,убийство,5) // В военной прокуратуре Благовещенского гарнизона подтвердили факт убийства.
СущСущ(ход,расследование,5) // В военной прокуратуре от комментариев хода расследования отказались.
СущСущ(возбуждение,дело,5) // В возбуждении уголовного дела отказано, сообщает газета.
СущСущ(привлечение,средство,5) // Рассматривается возможность привлечения на ремонт средств из округа.
СущСущ(степень,свобода,5) // По мере возрастания власти степени свободы отнюдь не возрастают...
СущСущ(запах,моча,5) // В нос пахнуло застарелым запахом мочи.
СущСущ(запах,духи,5) // В ноздри ударил экзотический запах духов.
СущСущ(обитатель,дом,5) // В холле собрались все обитатели дома.
СущСущ(атмосфера,дом,1) // В атмосфере дома царило необъяснимое напряжение.
СущСущ(шум,машина,5) // Они вскочили, потому  что услышали шум приближающейся машины.
СущСущ(окончание,война,5) // Но по окончании войны выдали и их тоже.
СущСущ(знать,бог,-5) // Я желаю знать бога и душу.
СущСущ(грубость,манера,5) // Он смешон и пугает грубостью манер.
СущСущ(сигнал,атака,5) // Сигнал атаки видел?
СущСущ(энергия,толпа,5) // Используют энергию толпы.
СущСущ(начальник,экспедиция,5) // Начальником экспедиции пойду.
СущСущ(штаб,дивизия,5) // Ищут штаб дивизии.
СущСущ(штаб,армия,5) // Штаб армии развернут...
СущСущ(МВД,Чувашия,5) // МВД Чувашии подводит итоги
СущСущ(стрелка,час,5) // Стрелки часов успокаивают.
СущСущ(угроза,цунами,5)
СущСущ(хозяин,квартира,5) // Допросили хозяев квартиры.
СущСущ(фонарь,кабина,5) // Сорвут фонарь кабины.
СущСущ(фактор,время,5) // О факторе времени.
СущСущ(тысяча,червонец,5) // Три тысячи червонцев...
СущСущ(тысяча,рубль,5) // Три тысячи рублей...
СущСущ(текст,обращение,5) // Составили текст обращения.
СущСущ(текст,корреспонденция,5) // Даю текст корреспонденции...
СущСущ(владелец,стоянка,3) // Владельцев стоянки ищут.
СущСущ(систематика,животное,5) // В систематике животных отделу соответствует тип.
СущСущ(улов,рыба,5) // Сокращаются уловы и других промысловых рыб.
СущСущ(часть,тело,5) // Оставшиеся неиспользованными части тела разбросали погороду.
СущСущ(показатель,рынок,5) // Упали показатели и других нью-йоркских рынков.
СущСущ(ремонт,дорога,5) // Ведется ремонт и территориальных автомобильных дорог.
//СущСущ(справление,нужда,5) // В Англии футболиста дисквалифицировали за справление нужды на стадионе
СущСущ(закрытие,магазин,5) // Продается в связи с закрытием убыточного магазина компьютерных комплектующих.
СущСущ(систематика,растение,5) // В систематике растений типу соответствует отдел.
СущСущ(дегустация,вино,5) // Ходили на дегустацию местные каталонских вин.
СущСущ(долина,смерть,5) // Позднее это место назвали Долиной смерти.
СущСущ(фрукт,изобилие,-100)
СущСущ(изобилие,фрукт,5)
СущСущ(качество,плод,5) // Стимулирует улучшение естественных вкусовых качеств плодов.
СущСущ(туфля,цвет,1) // Продам новые туфли, темно-синего цвета
СущСущ(повелитель,волк,3) // В будущем поостерегитесь, Повелитель волков.
СущСущ(объем,работа,5) // Провели огромный объем научно-исследовательской работы.
СущСущ(выбор,салат,3)
СущСущ(объект,поклонение,5) // У шимпанзе обнаружили объект поклонения
СущСущ(крах,экономика,5) // МВФ предупредил о грядущем крахе мировой экономики
СущСущ(финансирование,война,5) // «Деньги печатают для финансирования войны»
СущСущ(давление,США,5) // Сергей Лавров: ЕС находится под сильнейшим давлением США
СущСущ(похищение,кокаин,5) // Британский наркоторговец заявил в полицию о похищении его кокаина
СущСущ(бутылка,вино,5) // Взяли большую бутылку старого вина.
СущСущ(источник,недовольство,5) // Этот источник общественного недовольства ликвидировали.
СущСущ(запах,варево,5) // Чувствует крепчающий запах горького варева.
СущСущ(налет,авиация,5) // Упразднить нагрудный знак восточных рабочих.
СущСущ(опыт,работа,5)
СущСущ(центр,город,5) // Политическим центром будущего города была.
СущСущ(центр,округ,5) // Является административным центром Центрального округа.
СущСущ(синоптик,область,5) // Синоптики Смоленской области объявили штормовое предупреждение
СущСущ(ветеран,кампания,5) // Алтайскому ветерану чеченской кампании подарили квартиру
СущСущ(студия,кинохроника,5) // Самарскую студию кинохроники продали частному лицу
СущСущ(житель,столица,2) // Жителям камчатской столицы выдадут прививочные сертификаты
СущСущ(депутат,гордума,5) // Депутатам Екатеринбургской гордумы угрожают физической расправой
СущСущ(день,единство,5) // В Нижнем Новгороде празднуют День народного единства
СущСущ(работник,отрасль,5) // Петербургских работников туристической отрасли наградят медалями
СущСущ(средство,реабилитация,5) // Пермских инвалидов обеспечат техническими средствами реабилитации
СущСущ(проверка,АЭС,5) // Росэнергоатом проводит внеочередную проверку Ленинградской АЭС
СущСущ(стандарт,управление,5) // Внедрили международные стандарты корпоративного управления.
СущСущ(сотрудник,газета,5) // Взорвали бывшего сотрудника владивостокской газеты.
СущСущ(спор,субъект,5) // Какие-то споры хозяйствующих субъектов устраивал!
СущСущ(стоимость,дом,5) // Возьмите балансовую стоимость ветхого дома.
СущСущ(территория,отель,5) // отеля террирория маленькая
СущСущ(ассортимент,блюдо,5)
СущСущ(выпускник,институт,5) // Взял бывший выпускник Бауманского института.
СущСущ(ассортимент,фрукт,5)
СущСущ(уровень,обслуживание,5)
СущСущ(уровень,сервис,5)
СущСущ(комплекс,баня,5)
СущСущ(территория,отель,5)
СущСущ(выбор,блюдо,5)
СущСущ(качество,пища,5) // качество пищи
СущСущ(качество,еда,5)
СущСущ(качество,работа,5) // Гарантируем хорошее качество выполненных нами работ.
СущСущ(экспонат,коллекция,5) // Станет прекрасным экспонатом любой коллекции.
СущСущ(запас,ход,5) // какой у них запас хода?
СущСущ(день,победа,5) // В Латвии объявили сбор пожертвований на празднование Дня Победы
СущСущ(дар,речь,10) // у них забрали дар речи
СущСущ( открытие, век, 5 ) // это же открытие века!
СущСущ(тьма,дело,5) // у меня тьма дел.
СущСущ(председатель,правление,3) // Рустем Абдюков занимал пост председателя правления кредитного учреждения.
СущСущ(разрыв,мина,3) // Двор стонал от разрыва мин и визга осколков.
СущСущ(начало,война,3) // А начало войны!
СущСущ(тактика,наступление,3) // Отрабатывали тактику наступления.
СущСущ(здание,суд,3) // Здание суда восстанавливают.
СущСущ(суть,дело,3) // О сути дела.
СущСущ(счет,время,3) // Потерял счет времени.
СущСущ(начало,строительство,3) // Начало строительства трубного завода
СущСущ(строй,гвардеец,3) // Замер строй гвардейцев.
СущСущ(стрелка,прибор,3) // Дрожат стрелки приборов.
СущСущ(обстрел,дом,3) // Обстрел дома усилился.
СущСущ(хозяин,дом,3) // Хозяин дома перекрестился.
СущСущ(чердак,дом,3) // Чердак дома горит.
СущСущ(осада,дом,3) // Осада дома продолжается.
СущСущ(начальник,дивизия,3) // Начальника дивизии уговорили
СущСущ(дивизион,артиллерия,3) // Дайте дивизион артиллерии.
СущСущ(день,конституция,3) // Отпраздновали День Конституции.
СущСущ(декрет,правительство,3) // Читали декрет правительства?
СущСущ(гранит,наука,3) // Почем гранит науки?
СущСущ(нарушитель,граница,3) // Нарушителей границы проучили?
СущСущ(место,авария,3) // На месте аварии обнаружили порыв трубы диаметром 76 мм.
СущСущ(год,рождение,3) // Они работали под присмотром пожилого санитара 1955 года рождения.
СущСущ(гражданин,Россия,3) // В Приднестровье проживает около 110 тысяч граждан России. (ГРАЖДАНИН РОССИИ)
СущСущ(итог,год,3) // Нефтекамский автозавод подвел итоги 2004 года
СущСущ(день,ВДВ,3) // 2 августа в Костроме традиционно отмечают день ВДВ.
СущСущ(пробитие,пенальти,3) // на 62-й минуте получили право на пробитие пенальти
СущСущ(очаг,возгорание,3) // Очаг возгорания ликвидировали.
СущСущ(запас,вода,3) // Запас воды достаточный?
СущСущ(вкус,победа,3) // Почувствовал вкус победы.
СущСущ(берег,море,3) // Открытый берег моря.
СущСущ(течение,река,3) // В верхнем течении реки находили алмазы.
СущСущ(министр,оборона,3) // Инструкции своим подчиненным дал также министр обороны страны
СущСущ(белок,глаз,3) // Белки глаз заметно отливали желтизной.
СущСущ(администрация,округ,4) // В администрации округа обсудили вопросы, касающиеся занятости населения
СущСущ(администрация,город,4) // В администрации города традиционно жалуются на нехватку денег.
СущСущ(начало,акция,4) // Начало акции в 17 часов.
СущСущ(сторона,дело,4) // Это одна сторона дела.
СущСущ(черта,город,2) // Живем в черте города, в живописном местечке.
СущСущ(служба,безопасность,2) // Служба авиационной безопасности ведет предполетный досмотр воздушных судов.
СущСущ(несоблюдение,правило,2) // Причина - несоблюдение правил техники безопасности самими пострадавшими.
СущСущ(техника,безопасность,2) // Причина - несоблюдение правил техники безопасности самими пострадавшими.
СущСущ(превышение,скорость,2) // Причиной аварии по предварительным данным стало превышение скорости.
СущСущ(место,авария,2) // На месте аварии обнаружили порыв трубы диаметром 76 мм.
СущСущ(порыв,труба,2)
СущСущ(пересечение,граница,3) // В Абхазии их обвинили в незаконном пересечении границы.
СущСущ(начало,акция,2) // Начало акции в 17 часов.
СущСущ(командир,полк,3) // Понимал это и командир полка.
СущСущ(начало,концерт,3) // Начало концерта в 18 часов.
СущСущ(независимость,край,3) // Косовские албанцы настаивают на объявлении независимости этого края.
СущСущ(объявление,независимость,1)
СущСущ(чашка,кофе,2) // Пойдем выпьем по чашке кофе.
СущСущ(склон,гора,2) // беглецы прошли еще около мили вниз по склону горы
СущСущ(край,вода,2) // у края воды
СущСущ(расположение,часть,2) // явиться в расположение части
СущСущ(край,дорога,2) // отшвырнуть от края дороги
СущСущ(капля,вода,2) // рассмотреть в капле воды (капля воды)
СущСущ(кусочек,бумага,2) // прикинуть на кусочке бумаги
СущСущ(страница,повесть,2) // описывать на страницах повести
СущСущ(спинка,кресло,2) // откинуть на спинку кресла
СущСущ(страница,книга,2) // описать на страницах книги
СущСущ(пола,платье,2) // плюнул на полу платья
СущСущ(правительство,РФ,2) // Правительство РФ ушло в отставку
СущСущ(день,рождение,15) // подарить на день рожденья
СущСущ(достижение,цель,2) // использовать для достижения цели
СущСущ(код,доступ,2) // просить о коде доступа
СущСущ(здание, вокзал,2) // ждать в здании вокзала
СущСущ(поступление,товар,2) // спрашивать о поступлении товара
СущСущ(деньга,спонсор,2) // издать на деньги спонсоров
СущСущ(язык,пламя,2) // показались быстрые языки пламени.
СущСущ(цвет,радуга,2) // шары сверкали всеми цветами радуги.
СущСущ(звание,майор,2) // произвести в звание майора
СущСущ(гул,пламя,2) // пламени становился сильнее.
СущСущ(жажда,месть,5) // жажда мести овладела ими.
СущСущ(чашка,кофе,2) // Дайте мне ещё чашку кофе.
СущСущ(кусочек,фраза,2) // Генри уловил кусочек фразы.
СущСущ(аппарат,связь,2) // зазвонил аппарат внутренней связи.
СущСущ(кусок,арматура,2) // избить кусками арматуры
СущСущ(взмах,рука,3) // поприветствовать взмахом руки
СущСущ(стойка,регистрация,2) // пройти к стойке регистрации пассажиров
СущСущ(регистрация,пассажир,2) // пройти к стойке регистрации пассажиров
СущСущ(место,дислокация,2) // перевозить к новому месту дислокации
СущСущ(пульт,управление,2) // подпускать к пульту управления
СущСущ(конец,выступление,2) // резюмировать в конце выступления
СущСущ(область,сердце,2) // наносить в область сердца (область сердца)
СущСущ(конец,очередь,2) // передвинуть в конец очереди (конец очереди)
СущСущ(пойма,река,2) // подстрелить в пойме реки
СущСущ(уголок,глаз,2) // морщить в уголках глаз
СущСущ(раствор,кислота,2) // обрабатывать в растворе кислоты
СущСущ(черта,город,2) // установка базируется в черте города
СущСущ(заседание,комиссия,2) // отрицать на заседании комиссии
СущСущ(клочок,бумага,2) // прикидывать на клочке бумаги
СущСущ(сторона,противник,2) // перебежать на сторону противника
СущСущ(страница,газета,2) // критиковать на страницах газеты
СущСущ(место,служба,2) // отбывать на место службы
СущСущ(вершина,гора,2) // согревать на вершине горы
СущСущ(произведение,искусство,2) // ухлопать на скупку произведений искусства
СущСущ(день,лето,2) // последние тёплые дни лета
СущСущ(темп,речь,2) // я изменил темп речи
СущСущ(вес,упаковка,2) // складывать с весом упаковки
СущСущ(волна,боль,2) // усилие вызвало новую волну боли.
СущСущ(складка,одежда,2) // скрыть в складках одежды
СущСущ(причина,смерть,2) // Это явилось причиной его смерти.
СущСущ(лагерь,враг,2) // перебежать в лагерь врагов
СущСущ(процесс,выполнение,2) // затрагивать в процессе выполнения
СущСущ(территория,база,2) // охранять на территории базы
СущСущ(кожа,рука,2) // пролить на кожу руки
СущСущ(предел,досягаемость,2) // зверек постарался держаться вне пределов моей досягаемости.
СущСущ(зал,суд,5) //  освобождать в зале суда
СущСущ(порыв,ветер,2) // ударил внезапный порыв ветра.
СущСущ(остаток,ночь,2) // остаток ночи прошел спокойно.
СущСущ(след,кровь,2) // местами попадались следы крови.
СущСущ(аппарат,связь,2) // резко зазвонил аппарат связи.
СущСущ(вспышка,боль,2) // последовала очередная вспышка боли.
СущСущ(способ,передвижение,2) // существуют более быстрые способы передвижения.
СущСущ(час,путь,2) // после часа пути устроили привал.
СущСущ(крыша,дом,2) // проскользнуть на крышу дома
СущСущ(введение,формат,3) // введение избиркомом нового формата бюллетеней
СущСущ(аннулирование,заказ,3) // аннулирование директором вашего заказа
СущСущ(выдвижение,умозаключение,3) // выдвижение им своих умозаключений вызвало бурную реакцию
СущСущ(задержание,преступник,2) // задержание правоохранительными органами преступника
СущСущ(запуск,спутник,2) // после запуска Индией геостационарного спутника
СущСущ(край,лес,2) // увидев у края леса людей с корабля
СущСущ(пар,бензин,2) // Витька ненароком вдохнул пары бензина
СущСущ(решение,задача,4) // Решение задачи заняло четыре часа.
СущСущ(решение,проблема,4) // Для решения этой проблемы владельцев приглашают посетить официального дилера
СущСущ(рост,плод,2) // Томат плохо переносит повышенную влажность воздуха, но требует много воды для роста плодов
СущСущ(поле,битва,2) // равнина напоминала поле битвы.
СущСущ(поле,зрение,2) // я выпал из его поля зрения
СущСущ(институт,власть,2) // вводить новый институт власти
СущСущ(гримаса,боль,2) // по его лицу прошла гримаса боли.
СущСущ(крыша,дом,2) // лезть на крышу дома
СущСущ(преодоление,барьер,2) // преодоление самолетом звукового барьера
СущСущ(приступ,боль,2) // приступ боли пронзил его
СущСущ(администрация,область,2) // Администрация Магаданской области отправлена в отставку
СущСущ(губернатор,область,2) // на заседании Совбеза губернатор Амурской области предложил приступить к строительству
СущСущ(добыча,нефть,2) // Добыча сланцевой нефти может привести к существенному снижению цен на нефть.
СущСущ(смысл,речь,2) // Смысл его речи был неясен.
СущСущ(дно,озеро,2) // Российские ученые нашли челюсти чудовища на дне ледяного озера
СущСущ(дно,река,2)
СущСущ(дно,бассейн,2)
СущСущ(дно,яма,2)
СущСущ(сотня,лето,2) // сотни лет прошли почти без результатов
СущСущ(место,падение,2) // На месте падения метеорита нашли воронку
СущСущ(выпарка,соль,2) // котёл для выпарки соли
СущСущ(черта,город,2) // установка базируется в черте города
СущСущ(стойка,регистрация,2) // пройти к стойке регистрации
СущСущ(средство,существование,2) // лишить последних средств существования
СущСущ(задержка,зарплата,5) // За задержку зарплаты компанию могут признать банкротом
СущСущ(дело,техника,2) // но это уже дело техники
СущСущ(дело,честь,2)
СущСущ(цель,путешествие,2) // до цели путешествия было еще далеко
СущСущ(машина,время,2) // до машины времени было уже недалеко
СущСущ(место,назначение,2) // до места назначения было уже недалеко
СущСущ(сотрудник,таможня,2) // сотрудников таможни подозревают в содействии контрабандистам
СущСущ(окно,дом,2) // Окна дома выходят на юг.
СущСущ(слеза,обида,2) // Её била дрожь и душили слёзы обиды
СущСущ(фасад,дом,1) // фасад дома был украшен гирляндами
СущСущ(кружка,пиво,1) // Принесите, пожалуйста, кружку пива.
СущСущ(начало,разработка,1) // Корпорация Microsoft объявила о начале разработки новой операционной системы
СущСущ(пример,реализация,1) // Давайте поищем примеры реализации этой функции
СущСущ(реализация,функция,1)
СущСущ(благоустройство,территория,1) // хорошо делающий свою работу по благоустройству территории дома
СущСущ(развалина,дом,5) // Развалины дома служили ночлегом для бродяг.
СущСущ(налет,ученичество,2) // Налет ученичества имеется во всех его работах
СущСущ(место,посадка,2) // ходят по спирали вокруг места посадки
СущСущ(камень,мостовая,2) // мои башмаки ударили по камням мостовой
СущСущ(чемпионат,мир,5) // В Москве стартует XIV Чемпионат мира по легкой атлетике.
СущСущ(месторождение,нефть,5)
СущСущ(месторождение,газ,5)
СущСущ(месторождение,алмаз,5)
СущСущ(месторождение,никель,5)
СущСущ(месторождение,железо,5)
СущСущ(время,жизнь,2)
СущСущ(неуплата,налог,2) // Французский министр подал в отставку из-за обвинений в неуплате налогов
СущСущ(язык,программирование,2) // Искать классных специалистов среди других языков программирования
СущСущ(вспышка,молния,2)
СущСущ(возможность,выбор,2)
СущСущ(доказательство,невиновность,2) // Дамаск передал доказательства невиновности 
СущСущ(край,бездна,2) // Мне стало страшно: на краю грозящей бездны я лежал.
СущСущ(кусок,мыло,2) // И тут Бетси заметила, что  на  дороге  лежит кусок мыла.
СущСущ(возврат,товар,2) // возврат некачественного товара продавцу
СущСущ(состояние,опьянение,2)
СущСущ(средство,информация,5) // Во время работы семинара также пройдет совещание руководителей региональных средств массовой информации
СущСущ(направление,ветер,10) // Северные направления ветра, связанные с восточными перифериями антициклонов, преобладают над всеми другими направлениями ветра
СущСущ(восход,солнце,5) // после восхода солнца прошел час
СущСущ(рост,благосостояние,2) // Спрос на товары увеличивается в связи с ростом благосостояния трудящихся.
СущСущ(утро,день,2) // было около десяти часов утра следующего дня
СущСущ(вечер,день,2)
СущСущ(добыча,нефть,2) // Игра заключалась в моделировании последствий серьезного падения мировой добычи нефти
СущСущ(преодоление,барьер,2) // преодоление самолетом звукового барьера

// -------------------------------------------------------

// Управление правым существительным в ТВОРИТЕЛЬНОЕ падеже.
#define СущТвор(n1,n2,w) \
#begin
fact сущ_сущ
{
 if context { существительное:n1{} существительное:n2{ падеж:твор } }
  then return w
}
#end

СущТвор(обмен,вещество,5) // Явление осмоса играет большую роль в обмене питательными веществами в организме.
СущТвор(обмен,опыт,5) // Поездка в Москву и обмен опытом оказались плодотворными.
СущТвор(поставка,партия,2) // поставка отдельными партиями
СущТвор(вышивание,крестик,2)
СущТвор(главнокомандующий,флот,2) // Главнокомандующим флотом стал вице-адмирал Полянский.
СущТвор(главнокомандующий,войско,2)
СущТвор(главнокомандующий,армия,2)
СущТвор(командующий,флот,5) // Командующий Балтийским флотом сам накалил страсти.
СущТвор(ход,конь,5) // Сделаем ''ход конем''.

// -------------------------------------------------------

// Управление правым существительным в ДАТЕЛЬНОЕ падеже.
#define СущДат(n1,n2,w) \
#begin
fact сущ_сущ
{
 if context { существительное:n1{} существительное:n2{ падеж:дат } }
  then return w
}
#end

СущДат(неподчинение,приказ,5) // неподчинение приказу об остановке судна
СущДат(верность,семья,5) // ты правда делаешь это во имя верности семье?