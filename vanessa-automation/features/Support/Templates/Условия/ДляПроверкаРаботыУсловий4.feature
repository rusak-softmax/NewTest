# language: ru
# encoding: utf-8
#parent ua:
@UA24_Макеты_для_условий
#parent uf:
@UF9_Вспомогательные_фичи

@IgnoreOnCIMainBuild
@tree


Функциональность: ДляПроверкаРаботыУсловий4

Сценарий: ДляПроверкаРаботыУсловий4
	*И Я создаю Распределение расходов
		И Я запоминаю значение выражения '1' в переменную "ИмяПеременной"
		Если "2=2" Тогда
				И Я запоминаю значение выражения '2' в переменную "ИмяПеременной"
				И для каждой строки таблицы я выполняю
						| 'N' | 'Доля стоимости' | 'Статья калькуляции' |
						| '1' | "1,00"           | "Материальные"       |
						И Я запоминаю значение выражения '3' в переменную "ИмяПеременной"

		Иначе
				И Я запоминаю значение выражения '4' в переменную "ИмяПеременной"
		И Я запоминаю значение выражения '5' в переменную "Темп"