# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA27_Макеты_для_проверки_парсинга

@IgnoreOnCIMainBuild
@Tree

Функционал: Проверка работы сценария тег tree
	Как Разработчик
	Я Хочу чтобы я мог использовать тег tree
	Чтобы в дереве шагов была иерархия
 

Сценарий: Проверка работы сценария тег tree
      И я проверяю что ФО "ИспользоватьСоглашенияСКлиентами" имеет значение "Истина"
      И ПерваяГруппа
        И ВтораяГруппа
            И     В панели функций я выбираю "Заказы клиентов"
            И     в ТЧ "Список" я нажимаю на кнопку "Создать"
      И ТретьяГруппа
            И     из выпадающего списка "Клиент" я выбираю "Бинатон"