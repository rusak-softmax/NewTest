# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA51_Макеты_для_ТурбоГеркин

@IgnoreOnCIMainBuild
@tree


Функционал: Выполнить один шаг цикл условие истинно
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность выполнить один шаг условия
 

Сценарий: Выполнить один шаг цикл условие истинно
	
	Дано  Я запоминаю значение выражения "1" в переменную "Количество"
	Когда Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1
	И Пока выражение встроенного языка "Контекст.Количество < 20" истинно тогда
		И     Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 10
		И     Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 10
		И     Я запоминаю значение выражения "Контекст.Количество + 10" в переменную "Количество"
	И     Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1
	И     Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1
	И     Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1
	И     Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1
	И     Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1
	И     Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1