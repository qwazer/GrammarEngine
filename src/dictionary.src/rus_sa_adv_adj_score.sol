﻿facts adv_adj_score language=Russian
{
 arity=2
 //violation_score=-1
 return=integer
}


#define AdvAdj(adv,adj,w) \
#begin
fact adv_adj_score
{
 if context { наречие:adv{} прилагательное:adj{} }
  then return w
}
#end

AdvAdj(гладко, зачесанный, 5) // Валя Шашкова напряженно склонила гладко зачесанную голову над столом.
AdvAdj(внешне, притихший, 5) // Внешне притихший Салидар на самом деле бурлил.
AdvAdj(культурологически, нейтральный, 1) // Этическая позиция является культурологически нейтральной.
AdvAdj(Неудовлетворительно, низкий, 5 ) // Неудовлетворительно низкой является инновационная активность.
AdvAdj(рекордно, высокий, 5) // Орловские избиратели проявили рекордно высокую активность
AdvAdj(странно, печальный, 5) // Его улыбка показалась ей странно печальной.
AdvAdj(больно, умный, 5) // Больно уж умными себя считали.
AdvAdj(пугающе, белый, 5) // Ее обескровленное лицо было пугающе белым.
AdvAdj(хоть, какой-то, 2) // Ему нужен был хоть какой-то результат.
AdvAdj(богато,украшенный,5) // В комнате появились богато украшенные диваны.
AdvAdj(почти,безнадежный,5) // Почти безнадежное дело!..
AdvAdj(неверно,информированный,5) // Информирован был неверно.
AdvAdj(безмерно,радостный,5) // Рад был безмерно.
AdvAdj(недостаточно,чистый,5) // недостаточно чистое море
AdvAdj(широко,разветвленный,5) // Это была широко разветвленная организация нищих;
AdvAdj(безошибочно,узнаваемый,5) // Это был безошибочно узнаваемый писк новорожденного.
AdvAdj(нереально,красивый,5) // нереально красивое море
AdvAdj(потрясающе,сочный,5) // Потрясающе сочное мясо
AdvAdj(чрезвычайно,чистый,5) // чрезвычайно чистое море
AdvAdj(потрясающе,живописный,5) // потрясающе живописное местоположение
AdvAdj(достаточно,грязноватый,5) // море достаточно грязноватое
AdvAdj(достаточно,холодноватый,5) // Море достаточно холодноватое
AdvAdj(потрясающе,теплый,5) // Море было потрясающе теплым
AdvAdj(потрясающе,чистый,5) // потрясающее чистое море
AdvAdj(хорошо,сохранившийся,5) // хороший сохранившийся амфитеатр
AdvAdj(нереально,разбавленный,5) // нереально разбавленное пиво
AdvAdj(жутко,разбавленный,5) // жутко разбавленное пиво
AdvAdj(нереально,медлительный,5) // Нереально медлительное обслуживание
AdvAdj(чрезвычайно,вежливый,5) // чрезвычайно вежливое отношение персонала
AdvAdj(идеально,нежный,5) // идеально нежное мясо
AdvAdj( достаточно, богатый, 5 ) // меню достаточно богатое
AdvAdj( достаточно, маленький, 5 ) // маленькое достаточное меню
AdvAdj(стремительно,подскочивший,5) // Он первым принял стремительно подскочивший рейтинг последнего.
AdvAdj(потрясающе, классный,5) // потрясающе классное обслуживание
AdvAdj(жутко,застиранный,5) // жуткое застиранное постельное белье
AdvAdj(удивительно, разнообразный, 5 ) // удивительно разнообразное меню
AdvAdj(удивительно, однообразный, 5 ) // питание удивительно однообразное
AdvAdj(удивительно, вкусный, 5 ) // Питание было удивительно вкусным
AdvAdj(удивительно, скудный, 5 ) // удивительно скудное меню
AdvAdj(чрезвычайно, скудный, 5 ) // скудное чрезвычайное меню
AdvAdj(удивительно, хороший, 5 ) // питание удивительно хорошее
AdvAdj(нереально,роскошный,5) // роскошное нереальное обслуживание
AdvAdj(нереально,чистый,5) // нереальное море
AdvAdj(невероятно,однообразный,5) // питание невероятно однообразно
AdvAdj(невероятно,красивый,5) // море невероятно красиво
AdvAdj(идеально,спокойный,5) // идеально спокойное море
AdvAdj(идеально,чистый,5) // идеально чистое постельное белье
AdvAdj(идеально,белый,5) // не идеально белое белье
AdvAdj(идеально,белоснежный,5) // идеально белоснежное белье
AdvAdj(жутко,старый,5) // жуткое старое постельное белье
AdvAdj(жутко,мутный,5) // море было жутко мутным
AdvAdj(жутко,грязный,5) // море было жутко грязным
AdvAdj(чудовищно,грязный,5) // чудовищно грязное море
AdvAdj(жутко,холодный,5) // море было жутко холодным
AdvAdj(жутко,вкусный,5) // меню жутко вкусное
AdvAdj(жутко,однообразный,5) // меню жутко однообразное
AdvAdj(постоянно,растущий,5) // Постоянно растущие требования последнего вас подавляют.
AdvAdj(достаточно,нормальный,5) // обслуживание достаточно нормальное
AdvAdj(достаточно,обширный,5) // меню достаточно обширное
AdvAdj(достаточно,белый,5) // Белье достаточно белое
AdvAdj(достаточно,скудный,5) // Меню достаточно скудное
AdvAdj(достаточно,учтивый,5) // обслуживание достаточно учтиво
AdvAdj(достаточно,скудноватый,5) // Питание достаточно скудновато
AdvAdj(достаточно,холодный,5) // море достаточно холодно
AdvAdj(достаточно,грязный,5) // достаточно грязное море
AdvAdj(достаточно,спокойный,5) // море достаточно спокойно
AdvAdj(достаточно,полноценный,5)
AdvAdj(достаточно,чистый,5)
AdvAdj(достаточно,бедный,5)
AdvAdj(удивительно,хороший,5)
AdvAdj(абсолютно,чистый,5) // абсолютно чистое море
AdvAdj(абсолютно,отвратительный,5) // абсолютно отвратительное обслуживание
AdvAdj(абсолютно,равнодушный,5) // абсолютно равнодушное обслуживание
AdvAdj(абсолютно,спокойный,5) // абсолютно спокойное море
AdvAdj(абсолютно,хороший,5) // впечатление абсолютно хорошим
AdvAdj(абсолютно,белоснежный,5) // абсолютно белоснежное белье
AdvAdj(абсолютно,идеальный,5) // абсолютно идеальное расположение
AdvAdj(абсолютно,наплевательский,5) // абсолютно наплевательское отношение персонала
AdvAdj(абсолютно,разнообразный,5) // абсолютно разнообразное меню
AdvAdj(абсолютно,неприемлемый,5) // абсолютно неприемлемое обслуживание
AdvAdj(абсолютно,однообразный,5) // меню абсолютно однообразное
AdvAdj(абсолютно,тихий,5) // абсолютно тихое море
AdvAdj(абсолютно,нормальный,5) // Питание абсолютно нормальным
AdvAdj(почти,целый,5) // Почти целый квартал разрушенных домов.
AdvAdj(недостаточно,разнообразный,5)
AdvAdj(удивительно,скудный,5)
AdvAdj(невероятно,скудный,5)
AdvAdj(чрезвычайно,разнообразный,5)
AdvAdj(чрезвычайно,однообразный,5)
AdvAdj(абсолютно,нормальный,5)
AdvAdj(абсолютно,несъедобный,5)
AdvAdj(абсолютно,качественный,5)
AdvAdj(достаточно,убогий,5)
AdvAdj(достаточно,приличный,5)
AdvAdj(достаточно,хороший,5)
AdvAdj(достаточно,скромный,5)
AdvAdj(достаточно,полноценный,5)
AdvAdj(достаточно,качественный,5)
AdvAdj(достаточно,насыщенный,5)
AdvAdj(достаточно,обильный,5)
AdvAdj(достаточно,дорогой,5)
AdvAdj(достаточно,здоровый,5)
AdvAdj(достаточно,однообразный,5)
AdvAdj(достаточно,неплохой,5) // достаточное неплохое обслуживание
AdvAdj(потрясающе,красивый,5) // потрясающе красивое море
AdvAdj(удивительно,вкусный,5) // удивительно вкусное вино
AdvAdj(очень,вкусный,5)
AdvAdj(абсолютно,хамский,5) // абсолютно хамское отношение персонала
AdvAdj(достаточно,разнообразный,5) // Питание достаточно разнообразным
AdvAdj(невероятно,вкусный,5) // невероятно вкусное питание
AdvAdj(фантастически,вкусный,5) // фантастически вкусное меню
AdvAdj(достаточно,вкусный,5) // достаточно вкусное питание
AdvAdj(действительно,вкусный,5)
AdvAdj(абсолютно,невкусный,5) // абсолютно невкусное питание
AdvAdj(нереально,вкусный,5)
AdvAdj(потрясающе,вкусный,5)
AdvAdj(потрясающе,вежливый,5) // потрясающее вежливое отношение персонала
AdvAdj(абсолютно,безвкусный,5)
AdvAdj( вкусно, приготовленный, 5 )
AdvAdj( выгодно, расположенный, 5 )
AdvAdj( изумительно, вкусный, 5 )
AdvAdj( изумительно, приготовленный, 5 )
AdvAdj( невкусно, приготовленный, 5 )
AdvAdj( отлично, освежающий, 5 )
AdvAdj( офигенно, вкусный, 5 )
AdvAdj( плохо, вымытый, 5 )
AdvAdj( плохо, говорящий, 5 )
AdvAdj( плохо, мытый, 5 )
AdvAdj( плохо, пахнущий, 5 )
AdvAdj( плохо, помытый, 5 )
AdvAdj( плохо, представленный, 5 )
AdvAdj( плохо, приготовленный, 5 )
AdvAdj( плохо, прожаренный, 5 )
AdvAdj( плохо, промытый, 5 )
AdvAdj( плохо, пропеченный, 5 )
AdvAdj( плохо, работающий, 5 )
AdvAdj( плохо, сваренный, 5 )
AdvAdj( плохо, чищенный, 5 )
AdvAdj( приятно, оформленный, 5 )
AdvAdj( приятно, щекочущий, 5 )
AdvAdj( противно, пахнущий, 5 )
AdvAdj( удачно, расположенный, 5 )
AdvAdj( хорошо, заваренный, 5 )
AdvAdj( хорошо, оборудованный, 5 )
//AdvAdj( хорошо, организованный, 5 )
AdvAdj( хорошо, отваренный, 5 )
AdvAdj( хорошо, отработанный, 5 )
AdvAdj( хорошо, отстиранный, 5 )
AdvAdj( хорошо, оформленный, 5 )
AdvAdj( хорошо, пахнущий, 5 )
AdvAdj( хорошо, поданный, 5 )
AdvAdj( хорошо, поставленный, 5 )
AdvAdj( хорошо, представленный, 5 )
AdvAdj( хорошо, приготовленный, 5 )
AdvAdj( хорошо, придуманный, 5 )
AdvAdj( хорошо, проделанный, 5 )
//AdvAdj( хорошо, продуманный, 5 )
AdvAdj( хорошо, прожаренный, 5 )
AdvAdj( хорошо, промытый, 5 )
AdvAdj( хорошо, пропитанный, 5 )
AdvAdj( хорошо, работающий, 5 )
AdvAdj( хорошо, разваренный, 5 )
AdvAdj( хорошо, развитый, 5 )
AdvAdj( хорошо, расположенный, 5 )
AdvAdj( хорошо, сваренный, 5 )
AdvAdj( хорошо, сделанный, 5 )
AdvAdj( хорошо, сложенный, 5 )
AdvAdj( хорошо, спланированный, 5 )
AdvAdj( хорошо, тушеный, 5 )
AdvAdj( хорошо, убранный, 5 )
AdvAdj( хорошо, укомплектованный, 5 )
AdvAdj( хорошо, устроенный, 5 )
AdvAdj( хорошо, ухоженный, 5 )
AdvAdj( хорошо, экипированный, 5 )
AdvAdj( чисто, убранный, 5 )
AdvAdj(достаточно,большой,3) // достаточно большой набор блюд
AdvAdj( совершенно, другой, 2 ) // Для них подходит совершенно другой метод.
AdvAdj(легко,узнаваемый,5) // забористый бас Константина делал его легко узнаваемым
AdvAdj(сравнительно,спокойный,5) // В стране наступило сравнительно спокойное время...
AdvAdj(несправедливо,обиженный,5) // Билл чувствовал себя несправедливо обиженным.
AdvAdj(тяжело,больной,8) // Боевики отпустили тяжело больных женщин.
//AdvAdj("100%",чистый,2) // В баллоне находился 100% чистый гелий
AdvAdj(празднично,одетый,2) // В школу ребята пришли празднично одетые.
AdvAdj(обманчиво,простой,2) // Женщина изучала обманчиво простую серебряную оправу.
AdvAdj(очень,слабый,2) // - Ты еще очень слаб.
AdvAdj(стабильно,высокий,4) // Компания приносит стабильно высокий доход.
AdvAdj(просто,невыносимый,2) // она сделала его жизнь просто невыносимой
AdvAdj(очень,интересный,5) // меня ждет очень интересное время
AdvAdj(почти,каждый,12) // Почти каждый день она бывала в  Никольской церкви
AdvAdj(чересчур,серьезный,5)
AdvAdj(достаточно,слабый,2) // Но Япония исторически имела достаточно слабый уровень социальной защиты
AdvAdj(необычайно,темный,2) // было необычайно темно для этого времени суток
AdvAdj(достаточно,безопасный,2) // это будет достаточно безопасно
AdvAdj(очень,немногий,2) // очень немногие могли бы
AdvAdj(смертельно, опасный,2) // плоды их будут смертельно опасны.
AdvAdj(чересчур,животный,2) // действия были чересчур животными
AdvAdj(удивительно,знакомый,2) // мальчик был удивительно знаком
AdvAdj(совсем,немногий,2) // об этом знают совсем немногие
AdvAdj(совсем,новый,5) // многие из зданий выглядели совсем новыми
AdvAdj(здорово,видный,2) // сверху все было видно здорово.
AdvAdj("все еще",открытый,2) // его окно было все еще открыто.
AdvAdj(отчетливо,видный,2) // поле сражения стало видно совершенно отчетливо.
AdvAdj(относительно,маленький,2) // Кольцо используется для создания множества относительно маленьких пузырей
AdvAdj(довольно,неожиданный,2) // их появление было довольно неожиданным
AdvAdj(достаточно,прочный,2) // мое положение достаточно прочно.
AdvAdj(довольно,интересный,2) // если это для них достаточно интересно
AdvAdj(довольно,хороший,2) // у меня довольно хорошее зрение
AdvAdj(довольно,простой,2) // дело оказалось довольно простым.
AdvAdj(хорошо,известный,2) // все это хорошо известно
AdvAdj(почти,невозможный,12) // Это почти невозможно.
AdvAdj(наполовину,сделанный,1) // работа была наполовину сделана
AdvAdj(абсолютно,пустой,1) // квартира выглядела абсолютно пустой.
AdvAdj(безнадежно,мертвый,1) // планета была безнадежно мертва
AdvAdj(почти,пустой,11) // деревня была почти пуста
AdvAdj(широко,открытый,1) // Томас смотрел широко раскрытыми глазами.
AdvAdj(невероятно,злой,1) // однако лицо его стало невероятно злым.
AdvAdj(страшно,исхудавший,1) // страшно исхудавшее тело свидетельствовало о долгих лишениях
AdvAdj(неестественно,громкий,1) // скрип кожи казался неестественно громким.
AdvAdj(неестественно,мягкий,1) // трава казалась неестественно мягкой.
AdvAdj(ужасно,тяжелый,1) // плита оказалась ужасно тяжелой.
AdvAdj(недостаточно,сильный,1) // сильные крылья оказались недостаточно сильными.
AdvAdj(неожиданно,сильный,1) // удар получился неожиданно сильным.
AdvAdj(неожиданно,короткий,1) // ночь вышла неожиданно короткой. (неожиданно+прил.)
AdvAdj(неожиданно,тяжелый,1) // оружие показалось неожиданно тяжелым.
AdvAdj(невероятно,огромный,1) // вблизи диск оказался невероятно огромным.
AdvAdj(вполне,серьезный,1) // постепенно беседа приняла вполне серьезное направление. (вполне+прилаг)
AdvAdj(достаточно,простой,1) // послание оказалось достаточно простым. (достаточно+прил)
AdvAdj(достаточно,странный,2) // все это достаточно странно
AdvAdj(достаточно,интересный,2) // если это для них достаточно интересно
AdvAdj(чрезвычайно,интересный,2) // Это чрезвычайно интересно.
AdvAdj(чрезвычайно,вкусный,5) // чрезвычайно вкусное мороженое
AdvAdj(совершенно,мертвый,1) // пульт выглядел совершенно мертвым. (совершенно+прил)
AdvAdj(подозрительно,гладкий,1) // стены выглядели подозрительно гладкими (подозрительно+прил)
AdvAdj(довольно,новый,1) // далее находился довольно новый металлический ящик.
AdvAdj(невыносимо,долгий,1) // вторая половина дня казалась невыносимо долгой.
AdvAdj(бесконечно, далекий,2) // поверхность океана казалась отсюда бесконечно далекой.
AdvAdj(всегда,спокойный,2) // всегда спокойная его поверхность теперь кипела.
AdvAdj(довольно,длинный,2) // следовало произнести довольно длинное заклинание.
AdvAdj(ослепительно,белый,2) // ослепительно белая кошечка сладко спит на диване.
AdvAdj(наполовину,пустой,2) // колдун протянул наполовину пустую чашку девочке.
AdvAdj(ослепительно,яркий,2) // появились ослепительно яркие звезды.
AdvAdj(бесконечно,долгий,2) // потребовалось бесконечно долгое время.
AdvAdj(совершенно,прозрачный,2) // камень перед ней внезапно сделался совершенно прозрачным.
AdvAdj(ослепительно,яркий,2) // появились ослепительно яркие звезды.
AdvAdj(наполовину,пустой,2) // колдун протянул наполовину пустую чашку девочке.
AdvAdj(плотно,закрытый,2) // все они были плотно закрыты.
AdvAdj("больше всего",нужный,2) // им больше всего нужна возможность уничтожить меня
AdvAdj(наполовину,полный,2) // зал был уже наполовину полон.
AdvAdj(чисто,деловой,2) // Это была чисто деловая беседа.
AdvAdj(чертовски,тяжелый,2) // это было чертовски тяжелое дело
AdvAdj(поистине,королевский,2) // это был поистине королевский подарок
AdvAdj(чертовски,хороший,2) // это было чертовски хорошее время
AdvAdj(воистину,великий,2) // это был воистину великий ученый
AdvAdj(крайне,опасный,2) // это было крайне опасное место
AdvAdj(несколько,другой,1) // у рыцаря имелись несколько другие планы
AdvAdj(совсем,другой,1) // их раса боялась совсем другого.
AdvAdj(точно,такой,10) // сделай точно такой же жест.
AdvAdj(хоть,один,2) // Скажи хоть одно слово.
AdvAdj(довольно,далекий,2) // это было довольно далеко от дороги
AdvAdj(абсолютно,весь,2) // вы помните абсолютно все 
AdvAdj(хорошо,видный,2) // все было хорошо видно
AdvAdj(вполне,милый,2) // она вполне милая девочка
AdvAdj(довольно,свежий,2) // пятно было довольно свежим
AdvAdj(очень,свежий,5) // 
AdvAdj(совершенно,нормальный,2) // она совершенно нормальный ребенок
AdvAdj(довольно,долгий,2) // путешествие было довольно долгим
AdvAdj(весьма,разумный,2) // они весьма разумные люди
AdvAdj(неожиданно,легкий,2) // переход через горы оказался неожиданно легким
AdvAdj(всегда,весь,-100) // ему всегда все удавалось
AdvAdj(совсем,взрослый,2) // вон сын уже совсем взрослый
AdvAdj(совсем,маленький,2) // ты же совсем маленький
AdvAdj(совсем,один,2) // мы здесь совсем одни
AdvAdj(удивительно,приятный,2) // от их одежды шел удивительно приятный запах
AdvAdj(почти,весь,14) // почти все животные разбежались.
AdvAdj(слишком,многий,2) // мы уже потеряли слишком многих.
AdvAdj(удивительно,маленький,2) // получился удивительно маленький сверток.
AdvAdj(удивительно,неприятный,2) // раздался удивительно неприятный звук.
AdvAdj(смутно,знакомый,2) // коридор показался смутно знакомым.
AdvAdj(кристально,чистый,2)
AdvAdj(невероятно,тяжелый,2) // невероятно тяжелый груз упал с его плеч
AdvAdj(едва,заметный,2) // Алиса снова ощутила едва заметный толчок.
AdvAdj(давно,знакомый,5) // Валентин с облегчением узнал давно знакомый кошмар.
AdvAdj(давно,известный,2)
AdvAdj(неестественно,резкий,2) // все предметы вокруг приобрели неестественно резкие очертания
AdvAdj(страшно,знакомый,2) // страшно знакомое ощущение охватило меня
AdvAdj(еще,один,2) // еще одна вспышка молнии дала ему ответ
AdvAdj(тяжело,вооруженный,2) // тяжело вооруженные всадники
AdvAdj(пронзительно,кричащий,2) // Постепенно над моряками стало расти пронзительно кричащее облако из птиц.
AdvAdj(хоть,весь,2) // спи хоть всю жизнь
AdvAdj(довольно,слабый,2)
AdvAdj(так,называемый,5) // Образуется так называемый топологический парадокс
AdvAdj(вполне,возможный,5) // такое тоже было вполне возможно
AdvAdj(достаточно,длинный,2) // у тебя найдутся достаточно длинные бревна?
AdvAdj(мучительно, долгий, 2) // Поселение производится мучительно долго. (мучительно долго)
AdvAdj(сильно, поношенный, 2) // Рядом валялась сильно поношенная куртка. (СИЛЬНО ПОНОШЕННАЯ)
AdvAdj(разочаровывающе, скучный, 2) // Матч получился разочаровывающе скучным. (получился разочаровывающе)
AdvAdj(плохо, просчитанный, 2) // Откуда появляются плохо просчитанные решения? (плохо просчитанные)
AdvAdj(непозволительно, быстрый, 2) // Время летит непозволительно быстро. (непозволительно быстро)
AdvAdj(раздражающе, громкий, 2) // Раздражающе громко тикали часы. (Раздражающе громко)
AdvAdj(четко, установленный, 2) // Есть четко установленные приоритеты. (четко установленные)
AdvAdj(широко, раскрытый, 5) // Ее широко раскрытые глаза засветились восторгом.
AdvAdj(ужасно, высокомерный, 5) // Ей его слова показались ужасно высокомерными.
AdvAdj(еле, заметный, 5) // Ему навстречу двигалась еле заметная тень.
AdvAdj(еле, слышный, 5) // Еле слышный вздох вырвался у Клэр.
AdvAdj(сильно, поношенный, 5) // Рядом валялась сильно поношенная куртка.
AdvAdj(разочаровывающе, скучный, 5) // Матч получился разочаровывающе скучным.
AdvAdj(прямо, противоположный, 5) // Прямо противоположная ситуация возникла вокруг Киаростами.
AdvAdj(заметно, подросший, 5) // Первым подбежал заметно подросший братик Сережа.
AdvAdj(изящно, задуманный, 5) // Изящно задуманная акция удалась лишь наполовину.
AdvAdj(респектабельно, одетый, 5) // Жертвами преступников становились респектабельно одетые женщины.
AdvAdj(социально, значимый, 5) // Приоритет отдается социально значимым объектам.
AdvAdj(существенно, меньший, 5) // Остальным достались существенно меньшие доли.
AdvAdj(аномально, теплый, 5) // Аномально теплая погода наблюдается в Бурятии
AdvAdj(пышно, разодетый, 5) // К ним подошел пышно разодетый господин.
AdvAdj(глубоко, посаженный, 5) // Глубоко посаженные глазки преподобного вспыхнули любопытством.
AdvAdj(особо, интересный, 5) // Особо интересных сюжетных поворотов ждать не стоит. 
AdvAdj(скульптурно, вылепленный, 5) // Из-под одеяла показалось скульптурно вылепленное мускулистое плечо.
AdvAdj(пророссийски, настроенный, 5) // Акаев был пророссийски настроенным политиком.
AdvAdj(печально, знаменитый, 5) // Позади остался печально знаменитый Буденновск.
AdvAdj(мрачно, шагающий, 5) // Машины яростно сигналили, разгоняя мрачно шагаюшую пехоту.
AdvAdj(ровно, один, 5) // В нем был ровно один карат;

// Им оказался ранее судимый местный житель.
fact adv_adj_score
{
 if context { наречие:рано{ степень:сравн } прилагательное:судимый{} }
  then return 4
}

// Пилоты имели тщательно продуманное аварийное снаряжение.
fact adv_adj_score
{
 if context { наречие:тщательно{} прилагательное:продуманный{~ПРИЧАСТИЕ} }
  then return 4
}
