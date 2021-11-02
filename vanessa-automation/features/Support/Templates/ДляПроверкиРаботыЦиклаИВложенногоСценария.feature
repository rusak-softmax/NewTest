# language: ru
# encoding: utf-8
#parent uf:
@UF8_Turbo_Gherkin
#parent ua:
@UA22_Использовать_циклы_в_сценариях
@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функциональность: Для проверки работы цикла и вложенного сценария

Сценарий: Для проверки работы цикла и вложенного сценария
	И Я запоминаю значение выражения "1" в переменную "ТестоваяПеременная"


Сценарий: Второй сценарий. Не предназначен для экспорта.
	*Первая группа
		И Я запоминаю значение выражения "1" в переменную "ТестоваяПеременная"
		И Я запоминаю значение выражения "1" в переменную "ТестоваяПеременная"
	*Вторая группа
		*Третья группа
			И Я запоминаю значение выражения "1" в переменную "ТестоваяПеременная"
			И Я запоминаю значение выражения "1" в переменную "ТестоваяПеременная"
			Дано Я задаю таблицу строк "Таблица"
				| 'Товар1' |
				| 'Товар2' |
			И для каждого значения "ЗначениеИзМассива" из таблицы в памяти "Таблица"
					И Я запоминаю значение выражения "1" в переменную "ТестоваяПеременная"
					Если "Ложь" Тогда
						Тогда Я вызываю исключение "В таблице должны быть строки!"
					И Для проверки работы цикла и вложенного сценария
		*Четвертая группа
			И Я запоминаю значение выражения "1" в переменную "ТестоваяПеременная"