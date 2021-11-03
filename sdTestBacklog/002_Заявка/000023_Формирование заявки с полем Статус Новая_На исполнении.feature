﻿#language: ru
#author: AndAS
#http://jira.softmax.by:8090/pages/viewpage.action?pageId=1146960
#Страницы База Знаний домашняя страница Система делегирования Заявки 
#Статус заявки последовательно меняется системой по следующим правилам:
# 1) Новая - заявка без связанной задачи
# 2) На исполнении - связанные задачи в статусе Черновик или Назначена
@tree

Функционал: формирование ЗАЯВКИ

Как Руководитель1
Я хочу проверить поле Статус Новая и На исполнении.
Чтобы Статус Заявки изменялся в соответствии со спецификацией 

Контекст: 
	# Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Дано В таблице клиентов тестирования я активизирую строку 'sd_test'
	И я открыл сеанс TestClient от имени "Руководитель1" с паролем "" или подключаю уже существующий
	И я закрыл все окна клиентского приложения
	Если это не начальная страница Тогда
		И я закрываю текущее окно

Сценарий: Формирование заявки со статусом Новая (без задач)

	Когда я активизирую поле с именем "СтраницаКарта"
	Когда в таблице "СписокЗаявок" я нажимаю на кнопку с именем 'СписокЗаявокКнопкаСоздать'
	Тогда открылось окно 'Заявка (создание)'
	И я нажимаю кнопку выбора у поля "Абонент"
	Тогда открылось окно 'Потребители'
	И в таблице "Список" я перехожу к строке:
		| 'Лицевой счет'       | 'Абонент'  |
		| '000111' | 'Потребитель 1' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	И я нажимаю кнопку выбора у поля "Вид работ"
	Тогда открылось окно 'Виды работ'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'        |
		| '000000013' | 'С вводом показания счетчика' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	И я нажимаю кнопку выбора у поля "Адресовано"
	Тогда открылось окно 'Выбор пользователя'
	И в таблице "ПользователиСписок" поле с именем "Наименование" имеет значение "Руководитель1"
	И в таблице "ПользователиСписок" я активизирую поле с именем "Наименование"
	И я нажимаю на кнопку с именем 'ВыбратьПользователя'
	Тогда открылось окно 'Заявка (создание) *'
	И в поле 'Содержание' я ввожу текст 'Я ввожу текст в поле Содержание. Я ввожу текст 28/07/2020'
	И я нажимаю на кнопку 'Записать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Статус" стал равен 'Новая'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	# *
	И В текущем окне я нажимаю кнопку командного интерфейса 'Список задач'
	# Сегмент с контрольными точками:
	# *
	Тогда в таблице "Список" количество строк "равно" 0
	# *
	И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
	И Я закрываю текущее окно
	
Сценарий: Формирование заявки со статусом На исполнении (1 задача Черновик)

	Когда я активизирую поле с именем "СтраницаКарта"
	Когда в таблице "СписокЗаявок" я нажимаю на кнопку с именем 'СписокЗаявокКнопкаСоздать'
	Тогда открылось окно 'Заявка (создание)'
	И я нажимаю кнопку выбора у поля "Абонент"
	Тогда открылось окно 'Потребители'
	И в таблице "Список" я перехожу к строке:
		| 'Лицевой счет'       | 'Абонент'  |
		| '000111' | 'Потребитель 1' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	И я нажимаю кнопку выбора у поля "Вид работ"
	Тогда открылось окно 'Виды работ'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'        |
		| '000000013' | 'С вводом показания счетчика' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	И я нажимаю кнопку выбора у поля "Адресовано"
	Тогда открылось окно 'Выбор пользователя'
	И в таблице "ПользователиСписок" поле с именем "Наименование" имеет значение "Руководитель1"
	И в таблице "ПользователиСписок" я активизирую поле с именем "Наименование"
	И я нажимаю на кнопку с именем 'ВыбратьПользователя'
	Тогда открылось окно 'Заявка (создание) *'
	И в поле 'Содержание' я ввожу текст 'Я ввожу текст в поле Содержание. Я ввожу текст 28/07/2020'
	И я нажимаю на кнопку 'Записать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Статус" стал равен 'Новая'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	# *	
	И я нажимаю на кнопку 'Задача'
	Тогда открылось окно 'С вводом показания счетчика № от *'
	И в поле 'СрокИсполненияСВремя' я ввожу текст '08:00'
	И в поле 'СрокИсполненияВремя' я ввожу текст '08:10'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "ТочкаМаршрута" стал равен 'Черновик'
	# *
	И Я закрываю окно 'С вводом показания счетчика № от *'
	Тогда открылось окно 'Заявка * от *'
	# Ошибка: убрать принудительное обновление
	И я нажимаю на кнопку 'Перечитать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Статус" стал равен 'Новая'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	# *
	И В текущем окне я нажимаю кнопку командного интерфейса 'Список задач'
	# Ошибка: убрать принудительное обновление
	И я нажимаю на кнопку 'Обновить'
	# Сегмент с контрольными точками:
	# *
	Тогда таблица "Список" стала равной:
		| 'Вид работ'           | 'Автор'         | 'Срок по'    | 'Записана'            | 'Номер'    | 'Исполнитель' | 'Срок с'     | 'Время с' | 'Время по' | 'Выполнена' | 'Точка маршрута' | 'Бизнес-процесс'                                    | 'Наряд' |
		| 'С вводом показания счетчика' | 'Руководитель1' | '*' | '*' | '*' | ''            | '*' | '*'   | '*'    | ''          | 'Черновик'       | '*' | ''      |
	# *
	И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
	И Я закрываю текущее окно
	
Сценарий: Формирование заявки со статусом На исполнении (1 задача Черновик, 2 задача Черновик)

	Когда я активизирую поле с именем "СтраницаКарта"
	Когда в таблице "СписокЗаявок" я нажимаю на кнопку с именем 'СписокЗаявокКнопкаСоздать'
	Тогда открылось окно 'Заявка (создание)'
	И я нажимаю кнопку выбора у поля "Абонент"
	Тогда открылось окно 'Потребители'
	И в таблице "Список" я перехожу к строке:
		| 'Лицевой счет'       | 'Абонент'  |
		| '000111' | 'Потребитель 1' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	И я нажимаю кнопку выбора у поля "Вид работ"
	Тогда открылось окно 'Виды работ'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'        |
		| '000000013' | 'С вводом показания счетчика' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	И я нажимаю кнопку выбора у поля "Адресовано"
	Тогда открылось окно 'Выбор пользователя'
	И в таблице "ПользователиСписок" поле с именем "Наименование" имеет значение "Руководитель1"
	И в таблице "ПользователиСписок" я активизирую поле с именем "Наименование"
	И я нажимаю на кнопку с именем 'ВыбратьПользователя'
	Тогда открылось окно 'Заявка (создание) *'
	И в поле 'Содержание' я ввожу текст 'Я ввожу текст в поле Содержание. Я ввожу текст 28/07/2020'
	И я нажимаю на кнопку 'Записать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Статус" стал равен 'Новая'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	# *	
	И я нажимаю на кнопку 'Задача'
	Тогда открылось окно 'С вводом показания счетчика № от *'
	И в поле 'СрокИсполненияСВремя' я ввожу текст '08:10'
	И в поле 'СрокИсполненияВремя' я ввожу текст '08:20'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "ТочкаМаршрута" стал равен 'Черновик'
	# *
	И Я закрываю окно 'С вводом показания счетчика № от *'
	Тогда открылось окно 'Заявка * от *'
	# Ошибка: убрать принудительное обновление
	И я нажимаю на кнопку 'Перечитать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Статус" стал равен 'Новая'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	# *
	И я нажимаю на кнопку 'Задача'
	Тогда открылось окно 'С вводом показания счетчика № от *'
	И в поле 'СрокИсполненияСВремя' я ввожу текст '08:20'
	И в поле 'СрокИсполненияВремя' я ввожу текст '08:30'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "ТочкаМаршрута" стал равен 'Черновик'
	# *
	И Я закрываю окно 'С вводом показания счетчика № от *'
	Тогда открылось окно 'Заявка * от *'
	# Ошибка: убрать принудительное обновление
	И я нажимаю на кнопку 'Перечитать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Статус" стал равен 'Новая'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	# *
	И В текущем окне я нажимаю кнопку командного интерфейса 'Список задач'
	# Ошибка: убрать принудительное обновление
	И я нажимаю на кнопку 'Обновить'
	# Сегмент с контрольными точками:
	# *
	Тогда таблица "Список" стала равной:
		| 'Вид работ'           | 'Автор'         | 'Срок по'    | 'Записана'            | 'Номер'    | 'Исполнитель' | 'Срок с'     | 'Время с' | 'Время по' | 'Выполнена' | 'Точка маршрута' | 'Бизнес-процесс'                                    | 'Наряд' |
		| 'С вводом показания счетчика' | 'Руководитель1' | '*' | '*' | '*' | ''            | '*' | '*'   | '*'    | ''          | 'Черновик'       | '*' | ''      |
		| 'С вводом показания счетчика' | 'Руководитель1' | '*' | '*' | '*' | ''            | '*' | '*'   | '*'    | ''          | 'Черновик'       | '*' | ''      |
	# *
	# Ошибка: Необходимо заново открыть заявку, чтобы вторая задача появилась в списке. Проявляется нестабильно
	И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
	И Я закрываю текущее окно
	
Сценарий: Формирование заявки со статусом На исполнении (1 задача Черновик, 2 задача Назначена)

	Когда я активизирую поле с именем "СтраницаКарта"
	Когда в таблице "СписокЗаявок" я нажимаю на кнопку с именем 'СписокЗаявокКнопкаСоздать'
	Тогда открылось окно 'Заявка (создание)'
	И я нажимаю кнопку выбора у поля "Абонент"
	Тогда открылось окно 'Потребители'
	И в таблице "Список" я перехожу к строке:
		| 'Лицевой счет'       | 'Абонент'  |
		| '000111' | 'Потребитель 1' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	И я нажимаю кнопку выбора у поля "Вид работ"
	Тогда открылось окно 'Виды работ'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'        |
		| '000000013' | 'С вводом показания счетчика' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	И я нажимаю кнопку выбора у поля "Адресовано"
	Тогда открылось окно 'Выбор пользователя'
	И в таблице "ПользователиСписок" поле с именем "Наименование" имеет значение "Руководитель1"
	И в таблице "ПользователиСписок" я активизирую поле с именем "Наименование"
	И я нажимаю на кнопку с именем 'ВыбратьПользователя'
	Тогда открылось окно 'Заявка (создание) *'
	И в поле 'Содержание' я ввожу текст 'Я ввожу текст в поле Содержание. Я ввожу текст 28/07/2020'
	И я нажимаю на кнопку 'Записать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Статус" стал равен 'Новая'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	# *	
	И я нажимаю на кнопку 'Задача'
	Тогда открылось окно 'С вводом показания счетчика № от *'
	И в поле 'СрокИсполненияСВремя' я ввожу текст '08:30'
	И в поле 'СрокИсполненияВремя' я ввожу текст '08:40'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "ТочкаМаршрута" стал равен 'Черновик'
	# *
	И Я закрываю окно 'С вводом показания счетчика № от *'
	Тогда открылось окно 'Заявка * от *'
	# Ошибка: убрать принудительное обновление
	И я нажимаю на кнопку 'Перечитать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Статус" стал равен 'Новая'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	# *
	И я нажимаю на кнопку 'Задача'
	Тогда открылось окно 'С вводом показания счетчика № от *'
	И в поле 'СрокИсполненияСВремя' я ввожу текст '08:40'
	И в поле 'СрокИсполненияВремя' я ввожу текст '08:50'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "ТочкаМаршрута" стал равен 'Черновик'
	# *
	И я нажимаю кнопку выбора у поля с именем "ИсполнителиСписок"
	Тогда открылось окно 'Список значений'
	И я нажимаю на кнопку с именем 'Add'
	И в таблице "ValueList" я нажимаю кнопку выбора у реквизита "Значение"
	Тогда открылось окно 'Выбор пользователя'
	И в таблице "ПользователиСписок" я перехожу к строке:
		| 'Полное имя'    |
		| 'Исполнитель 3' |
	И я нажимаю на кнопку с именем 'ВыбратьПользователя'
	Тогда открылось окно 'Список значений'
	И в таблице "ValueList" я завершаю редактирование строки
	И я нажимаю на кнопку 'ОК'
	Тогда открылось окно 'С вводом показания счетчика № от *'
	И я нажимаю на кнопку 'Назначить'
	# Окно закрывается и нельзя установить КТ:	И     элемент формы с именем "ТочкаМаршрута" стал равен 'Назначена'
	# Ошибка: убрать принудительное обновление
	И я нажимаю на кнопку 'Перечитать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Статус" стал равен 'На исполнении'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	# *
	И В текущем окне я нажимаю кнопку командного интерфейса 'Список задач'
	# Ошибка: убрать принудительное обновление
	И я нажимаю на кнопку 'Обновить'
	# Сегмент с контрольными точками:
	# *
	Тогда таблица "Список" стала равной:
		| 'Вид работ'           | 'Автор'         | 'Срок по'    | 'Записана'            | 'Номер'    | 'Исполнитель' | 'Срок с'     | 'Время с' | 'Время по' | 'Выполнена' | 'Точка маршрута' | 'Бизнес-процесс'                                    | 'Наряд' |
		| 'С вводом показания счетчика' | 'Руководитель1' | '*' | '*' | '*' | ''            | '*' | '*'   | '*'    | ''          | 'Черновик'       | '*' | ''      |
		| 'С вводом показания счетчика' | 'Руководитель1' | '*' | '*' | '*' | ''            | '*' | '*'   | '*'    | ''          | 'Назначена'       | '*' | '*'      |
	# *
	# Ошибка: Необходимо заново открыть заявку, чтобы вторая задача появилась в списке. Проявляется нестабильно
	И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
	И Я закрываю текущее окно
	
Сценарий: Формирование заявки со статусом На исполнении (1 задача Назначена, 2 задача Назначена)

	Когда я активизирую поле с именем "СтраницаКарта"
	Когда в таблице "СписокЗаявок" я нажимаю на кнопку с именем 'СписокЗаявокКнопкаСоздать'
	Тогда открылось окно 'Заявка (создание)'
	И я нажимаю кнопку выбора у поля "Абонент"
	Тогда открылось окно 'Потребители'
	И в таблице "Список" я перехожу к строке:
		| 'Лицевой счет'       | 'Абонент'  |
		| '000111' | 'Потребитель 1' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	И я нажимаю кнопку выбора у поля "Вид работ"
	Тогда открылось окно 'Виды работ'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'        |
		| '000000013' | 'С вводом показания счетчика' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	И я нажимаю кнопку выбора у поля "Адресовано"
	Тогда открылось окно 'Выбор пользователя'
	И в таблице "ПользователиСписок" поле с именем "Наименование" имеет значение "Руководитель1"
	И в таблице "ПользователиСписок" я активизирую поле с именем "Наименование"
	И я нажимаю на кнопку с именем 'ВыбратьПользователя'
	Тогда открылось окно 'Заявка (создание) *'
	И в поле 'Содержание' я ввожу текст 'Я ввожу текст в поле Содержание. Я ввожу текст 28/07/2020'
	И я нажимаю на кнопку 'Записать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Статус" стал равен 'Новая'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	# *	
	И я нажимаю на кнопку 'Задача'
	Тогда открылось окно 'С вводом показания счетчика № от *'
	И в поле 'СрокИсполненияСВремя' я ввожу текст '08:50'
	И в поле 'СрокИсполненияВремя' я ввожу текст '09:00'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "ТочкаМаршрута" стал равен 'Черновик'
	# *
	И я нажимаю кнопку выбора у поля с именем "ИсполнителиСписок"
	Тогда открылось окно 'Список значений'
	И я нажимаю на кнопку с именем 'Add'
	И в таблице "ValueList" я нажимаю кнопку выбора у реквизита "Значение"
	Тогда открылось окно 'Выбор пользователя'
	И в таблице "ПользователиСписок" я перехожу к строке:
		| 'Полное имя'    |
		| 'Исполнитель 3' |
	И я нажимаю на кнопку с именем 'ВыбратьПользователя'
	Тогда открылось окно 'Список значений'
	И в таблице "ValueList" я завершаю редактирование строки
	И я нажимаю на кнопку 'ОК'
	Тогда открылось окно 'С вводом показания счетчика № от *'
	И я нажимаю на кнопку 'Назначить'
	# Окно закрывается и нельзя установить КТ:	И     элемент формы с именем "ТочкаМаршрута" стал равен 'Назначена'
	# Ошибка: убрать принудительное обновление
	И я нажимаю на кнопку 'Перечитать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Статус" стал равен 'На исполнении'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	# *
	И я нажимаю на кнопку 'Задача'
	Тогда открылось окно 'С вводом показания счетчика № от *'
	И в поле 'СрокИсполненияСВремя' я ввожу текст '09:00'
	И в поле 'СрокИсполненияВремя' я ввожу текст '09:10'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "ТочкаМаршрута" стал равен 'Черновик'
	# *
	И я нажимаю кнопку выбора у поля с именем "ИсполнителиСписок"
	Тогда открылось окно 'Список значений'
	И я нажимаю на кнопку с именем 'Add'
	И в таблице "ValueList" я нажимаю кнопку выбора у реквизита "Значение"
	Тогда открылось окно 'Выбор пользователя'
	И в таблице "ПользователиСписок" я перехожу к строке:
		| 'Полное имя'    |
		| 'Исполнитель 3' |
	И я нажимаю на кнопку с именем 'ВыбратьПользователя'
	Тогда открылось окно 'Список значений'
	И в таблице "ValueList" я завершаю редактирование строки
	И я нажимаю на кнопку 'ОК'
	Тогда открылось окно 'С вводом показания счетчика № от *'
	И я нажимаю на кнопку 'Назначить'
	# Окно закрывается и нельзя установить КТ:	И     элемент формы с именем "ТочкаМаршрута" стал равен 'Назначена'
	# Ошибка: убрать принудительное обновление
	И я нажимаю на кнопку 'Перечитать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Статус" стал равен 'На исполнении'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	# *
	И В текущем окне я нажимаю кнопку командного интерфейса 'Список задач'
	# Ошибка: убрать принудительное обновление
	И я нажимаю на кнопку 'Обновить'
	# Сегмент с контрольными точками:
	# *
	Тогда таблица "Список" стала равной:
		| 'Вид работ'           | 'Автор'         | 'Срок по'    | 'Записана'            | 'Номер'    | 'Исполнитель' | 'Срок с'     | 'Время с' | 'Время по' | 'Выполнена' | 'Точка маршрута' | 'Бизнес-процесс'                                    | 'Наряд' |
		| 'С вводом показания счетчика' | 'Руководитель1' | '*' | '*' | '*' | ''            | '*' | '*'   | '*'    | ''          | 'Назначена'       | '*' | '*'      |
		| 'С вводом показания счетчика' | 'Руководитель1' | '*' | '*' | '*' | ''            | '*' | '*'   | '*'    | ''          | 'Назначена'       | '*' | '*'      |
	# *
	# Ошибка: Необходимо заново открыть заявку, чтобы вторая задача появилась в списке
	И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
	И Я закрываю текущее окно
	
Сценарий: Формирование заявки со статусом На исполнении (1 задача Назначена)

	Когда я активизирую поле с именем "СтраницаКарта"
	Когда в таблице "СписокЗаявок" я нажимаю на кнопку с именем 'СписокЗаявокКнопкаСоздать'
	Тогда открылось окно 'Заявка (создание)'
	И я нажимаю кнопку выбора у поля "Абонент"
	Тогда открылось окно 'Потребители'
	И в таблице "Список" я перехожу к строке:
		| 'Лицевой счет'       | 'Абонент'  |
		| '000111' | 'Потребитель 1' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	И я нажимаю кнопку выбора у поля "Вид работ"
	Тогда открылось окно 'Виды работ'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'        |
		| '000000013' | 'С вводом показания счетчика' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	И я нажимаю кнопку выбора у поля "Адресовано"
	Тогда открылось окно 'Выбор пользователя'
	И в таблице "ПользователиСписок" поле с именем "Наименование" имеет значение "Руководитель1"
	И в таблице "ПользователиСписок" я активизирую поле с именем "Наименование"
	И я нажимаю на кнопку с именем 'ВыбратьПользователя'
	Тогда открылось окно 'Заявка (создание) *'
	И в поле 'Содержание' я ввожу текст 'Я ввожу текст в поле Содержание. Я ввожу текст 28/07/2020'
	И я нажимаю на кнопку 'Записать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Статус" стал равен 'Новая'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	# *	
	И я нажимаю на кнопку 'Задача'
	Тогда открылось окно 'С вводом показания счетчика № от *'
	И в поле 'СрокИсполненияСВремя' я ввожу текст '09:10'
	И в поле 'СрокИсполненияВремя' я ввожу текст '09:20'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "ТочкаМаршрута" стал равен 'Черновик'
	# *
	И я нажимаю кнопку выбора у поля с именем "ИсполнителиСписок"
	Тогда открылось окно 'Список значений'
	И я нажимаю на кнопку с именем 'Add'
	И в таблице "ValueList" я нажимаю кнопку выбора у реквизита "Значение"
	Тогда открылось окно 'Выбор пользователя'
	И в таблице "ПользователиСписок" я перехожу к строке:
		| 'Полное имя'    |
		| 'Исполнитель 3' |
	И я нажимаю на кнопку с именем 'ВыбратьПользователя'
	Тогда открылось окно 'Список значений'
	И в таблице "ValueList" я завершаю редактирование строки
	И я нажимаю на кнопку 'ОК'
	Тогда открылось окно 'С вводом показания счетчика № от *'
	И я нажимаю на кнопку 'Назначить'
	# Окно закрывается и нельзя установить КТ:	И     элемент формы с именем "ТочкаМаршрута" стал равен 'Назначена'
	# Ошибка: убрать принудительное обновление
	И я нажимаю на кнопку 'Перечитать'	
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Статус" стал равен 'На исполнении'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	# *
	И В текущем окне я нажимаю кнопку командного интерфейса 'Список задач'
	# Ошибка: убрать принудительное обновление
	И я нажимаю на кнопку 'Обновить'
	# Сегмент с контрольными точками:
	# *
	Тогда таблица "Список" стала равной:
		| 'Вид работ'           | 'Автор'         | 'Срок по'    | 'Записана'            | 'Номер'    | 'Исполнитель' | 'Срок с'     | 'Время с' | 'Время по' | 'Выполнена' | 'Точка маршрута' | 'Бизнес-процесс'                                    | 'Наряд' |
		| 'С вводом показания счетчика' | 'Руководитель1' | '*' | '*' | '*' | ''            | '*' | '*'   | '*'    | ''          | 'Назначена'       | '*' | '*'      |
	# *
	И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
	И Я закрываю текущее окно