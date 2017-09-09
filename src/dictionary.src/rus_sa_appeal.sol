﻿// ******************
// Обращение
// ******************


patterns ПолучательОбращения export { node:root_node }

// Опомнитесь, что с вами?
wordentry_set НеПолучательСообщения=
{
 местоим_сущ:что{},
 местоим_сущ:что-то{},
 местоим_сущ:что-либо{},
 местоим_сущ:что-нибудь{},
 местоим_сущ:кто{},
 местоим_сущ:кто-то{},
 местоим_сущ:кто-либо{},
 местоим_сущ:кто-нибудь{}
}


// Ты пойдёшь со мной, Вера?
//                     ^^^^
pattern ПолучательОбращения
{ 
 существительное:*{ ~НеПолучательСообщения падеж:им одуш:одуш <в_класс>существительное:имя{} } : export { node:root_node }
} : ngrams { 2 }


// Ты понимаешь, уважаемый коллега?
//               ^^^^^^^^^^^^^^^^^
pattern ПолучательОбращения
{ 
 ГруппаСущ4{ ~НеПолучательСообщения падеж:им одуш:одуш } : export { node:root_node }
}

// О чем ты плачешь, ель?
//                 ^^^^^
pattern ПолучательОбращения
{ 
 ГруппаСущ4{ ~НеПолучательСообщения падеж:им одуш:неодуш } : export { node:root_node }
} : ngrams { -2 }


// Боже мой, я отчаялся.
// ^^^^^^^^
pattern ПолучательОбращения
{ 
 ГруппаСущ4{ падеж:зват } : export { node:root_node }
}



// Мы спрашиваем вас, Виктор Афанасьевич, о вашей последней работе.
//                    ^^^^^^^^^^^^^^^^^^
// - Ты обедал, Роналд?
//              ^^^^^^^
// Контрпример:
// Увидев Ричарда, она просияла.
// ^^^^^^^^^^^^^^^
pattern ПолучательОбращения
{
 ФИО{ ~НеПолучательСообщения } : export { node:root_node }
} : ngrams { 3 }


// очень частотный паттерн "моя xxxx", "мой xxxx" и "мои xxx"
// Я потерял тебя, моя маленькая.
//                 ^^^^^^^^^^^^^
pattern ПолучательОбращения
{ 
 adj1=прилагательное:мой{ падеж:им } : export { node:root_node }
 adj2=ГруппаПрил2{ падеж:им =adj1:число =adj1:род }
}
: links { adj1.<NEXT_ADJECTIVE>adj2 }
: ngrams { -2 }


// Боже мой, какое счастье!
// ^^^^^^^^
pattern ПолучательОбращения
{ 
 n=существительное:*{ падеж:зват } : export { node:root_node }
 adj=прилагательное:*{ падеж:им число:ед =n:РОД }
}
: links { n.<ATTRIBUTE>adj }
: ngrams { 5 }




/*
// Ты пойдёшь со мной, подруга моя?
//                   ^^^^^^^^^^^^^^
pattern Предлож1
{
 p=Предикат : export { node:root_node }
 comma=','
 n=ПолучательОбращения
} : links
{
 p.<APPEAL>n.<PUNCTUATION>comma
}
: ngrams { -1 }

// Николай, лесник предупредил браконьеров о серьезных последствиях?
pattern Предлож1
{
 n=существительное:*{ падеж:им одуш:одуш }
 comma=','
 p=Предикат : export { node:root_node }
} : links { p.<APPEAL>n.<PUNCTUATION>comma }


// Провожающие, просим вас покинуть вагоны
wordentry_set ПрилагКакПодлежащ =
{
 прилагательное:Провожающий{},
 прилагательное:Отъезжающий{}
}

pattern Предлож1
{
 n=ПрилагКакПодлежащ{ число:мн падеж:им }
 comma=','
 v=Сказуемое{ ЛИЦО:1 } : export { node:root_node }
} : links { v.<APPEAL>n.<PUNCTUATION>comma }

pattern Предлож1
{
 n=ГруппаСущ4{ падеж:им }
 comma=','
 v=Сказуемое{ ЛИЦО:1 } : export { node:root_node }
} : links { v.<APPEAL>n.<PUNCTUATION>comma }
*/



// --------------------------------------

// Мы пригласили вас, дорогие друзья, для важного объявления
//                  ^^^^^^^^^^^^^^^^^
pattern ПрямоеОбращение
{
 @probe_left(ЛевыйОграничительОборота)
 n=ПолучательОбращения : export { node:root_node }
 @noshift(ПравыйОграничительОборота)
 comma2=@coalesce(',')
}
: links { 
 n.{
    ~<PUNCTUATION>comma2
   }
}
: ngrams { -2 }

// Простите, товарищи дорогие!
//         ^^^^^^^^^^^^^^^^^^
pattern ПрямоеОбращение
{
 comma1=','
 n=ПолучательОбращения : export { node:root_node }
 @noshift(ПравыйОграничительОборота)
 comma2=@coalesce(',')
}
: links { 
 n.{
    <PUNCTUATION>comma1
    ~<PUNCTUATION>comma2
   }
}
: ngrams { -2 }
