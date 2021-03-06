# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA45_Прочая_активность_вообще

@IgnoreOnCIMainBuild

Функционал: Исследование работы обработки vanessa-behavior
	Как Правильный разработчик
	Хочу Разобраться в том как методология BDD реализована в обработке vanessa-behavior
	Чтобы Использовать полученные навыки на практике

Сценарий: Работа с простыми параметрами 
	Когда Я обрамляю слово кавычками "Тест"
	Тогда Я получаю слово обрамленное кавычками как параметр процедуры

Сценарий: Работа без параметров
	Когда Я хочу выделить в feature-файле слово но не хочу передавать его как параметр
	Тогда Я обрамляю его звездочками *Тест*
	
Структура сценария: Объединение нескольких одинаковых сценариев в структуре
	Когда Я обрамляю переменную угловыми скобками <Тест>
	Тогда Будет создан один шаг но вызван он будет столько раз сколько значений есть в секции Примеры

Примеры:
	|	Тест		|
	|	150			|
	|	Проба		|
	|	19.11.2015	|
	|	-150		|

#видеовставка что колонок может быть несколько
	
Сценарий: Работа с параметрами-таблицами
	Когда Я в конце строки ставлю двоеточие а после двоеточия создаю таблицу:
	
	|	Товар		|	Количество	|	СчетУчета	|
	|	Холодильник	|	5			|	41.01		|
	|	Карандаш	|	100			|	004.01		|
	
	Тогда В процедуру, которая соответствует шагу будет передана таблица

#видеовставка, первая строка таблицы - это заголовки таблицы из файла, а имена колонок будут такими "Кол1", "Кол2" ... "КолN"