# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA49_макеты_для_запуска_сценариев

@IgnoreOnCIMainBuild
@SpecialTag

Функционал: Проверка выполнить сценарий с выбранного шага второй шаг не реализован
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность загрузить произвольную тестовую фичу в vanessa-behavior
 

Сценарий: Проверка выполнить сценарий с выбранного шага второй шаг не реализован

	Когда Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1
	И     Этот шаг вообще не реализован
	И     Я могу продолжить выполнение шагов в хост системе