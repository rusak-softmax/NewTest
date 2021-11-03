﻿#language: ru
#author: AndAS
#http://jira.softmax.by:8090/pages/viewpage.action?pageId=1146960
#Страницы База Знаний домашняя страница Система делегирования Заявки 
#Для создания необходимо заполнить поля Абонент, Объект обслуживания, Вид работ, Сроки исполнения и Адресата.
@tree

Функционал: формирование ЗАЯВКИ

Как Руководитель1
Я хочу проверить что для создания ЗАЯВКИ необходимо заполнить обязательные поля: Абонент, Объект обслуживания, Вид работ, Сроки исполнения, Адресат.
Чтобы заявка НЕ формировалась без заполнения обязательных полей с выводом причины в виде информационного сообщения 

Контекст: 
	# Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Дано В таблице клиентов тестирования я активизирую строку 'sd_test'
	И я открыл сеанс TestClient от имени "Руководитель1" с паролем "" или подключаю уже существующий
	И я закрыл все окна клиентского приложения
	Если это не начальная страница Тогда
		И я закрываю текущее окно
	И Я запоминаю значение выражения 'Формат(ТекущаяДата(), "ДЛФ=Д")' в переменную "Дата" 
	И Я запоминаю значение выражения 'Формат(ТекущаяДата(), "ДФ=dd.MM.yyyy")' в переменную "СрокИсполненияС"
	И Я запоминаю значение выражения 'Формат(ТекущаяДата(), "ДФ=dd.MM.yyyy")' в переменную "СрокИсполнения"

Сценарий: Формирование заявки ПУСТОЙ с полем Сроки исполнения + Абонент + Объект обслуживания + Вид Работ + Адресат

	Когда я активизирую поле с именем "СтраницаКарта"
	Когда в таблице "СписокЗаявок" я нажимаю на кнопку с именем 'СписокЗаявокКнопкаСоздать'
	Тогда открылось окно 'Заявка (создание)'
	# обязательное поле: Сроки исполнения 
	Тогда значение поля с именем "Дата" содержит текст "$Дата$"
	Тогда значение поля с именем "СрокИсполненияС" содержит текст "$СрокИсполненияС$"
	Тогда значение поля с именем "СрокИсполнения" содержит текст "$СрокИсполнения$"
	И я нажимаю кнопку выбора у поля "Абонент"
	Тогда открылось окно 'Потребители'
	И в таблице "Список" я перехожу к строке:
		| 'Лицевой счет'       | 'Абонент'  |
		| '000111' | 'Потребитель 1' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	# обязательное поле: Абонент
	# обязательное поле: Объект обслуживания 
	И я нажимаю на кнопку 'Записать'
	Тогда открылось окно '1С:Предприятие' 
	# текст сообщения: Не удалось записать "Заявка"!
	И я нажимаю на кнопку 'OK'
	# информационное сообщение
	Когда в логе сообщений TestClient есть сообщения только из списка:
	| 'Не заполнено адресовано' |
	| 'Не заполнено поле Вид работ' |
	# Предложение: Возможно, было бы правильней выдавать информационное сообщение 'Не заполнено поле Адресовано'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "ПричинаЗавершения" стал равен ''
	И     элемент формы с именем "Номер" стал равен ''
	И     элемент формы с именем "Абонент" стал равен 'Потребитель 1'
	И     элемент формы с именем "ЛицевойСчет" стал равен '000111'
	И     элемент формы с именем "ОбъектОбслуживания" стал равен 'Объект обслуживания 1 (полный)'
	И     элемент формы с именем "ВидРабот" стал равен ''
	И     элемент формы с именем "Содержание" стал равен ''
	И     элемент формы с именем "ТребованияРуководителя" стал равен ''
	И     элемент формы с именем "Декорация1" стал равен 'Декорация1'
	И     элемент формы с именем "Приоритет" стал равен 'Средний'
	И     элемент формы с именем "РадиусОтбораЗаявок" стал равен '15'
	И     элемент формы с именем "Направление" стал равен 'Участок 1'
	И     элемент формы с именем "Адресовано" стал равен ''
	И     элемент формы с именем "Статус" стал равен 'Новая'
	И     элемент формы с именем "СрокИсполненияС" стал равен "$СрокИсполненияС$"
	И     у элемента формы с именем "СрокИсполненияС" текст редактирования стал равен "$СрокИсполненияС$"
	И     элемент формы с именем "СрокИсполнения" стал равен "$СрокИсполнения$"
	И     у элемента формы с именем "СрокИсполнения" текст редактирования стал равен "$СрокИсполнения$"
	И     элемент формы с именем "ПоловинаДня" стал равен ''
	И     элемент формы с именем "ДоступностьООНач" стал равен '08:00'
	И     у элемента формы с именем "ДоступностьООНач" текст редактирования стал равен '08:00'
	И     элемент формы с именем "ДоступностьООКон" стал равен '17:00'
	И     у элемента формы с именем "ДоступностьООКон" текст редактирования стал равен '17:00'
	И     таблица "УстановленноеОборудование" содержит строки:
		| 'N' | 'Оборудование'            |
		| '*' | 'Оборудование 1 Объекта 1' |
		| '*' | 'Оборудование 2 Объекта 1' |
		| '*' | 'Оборудование 3 Объекта 1' |
	И     элемент формы с именем "ПланОбслуживания" стал равен ''
	И     элемент формы с именем "Основание" стал равен ''
	И     элемент формы с именем "Автор" стал равен 'Руководитель1'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	И     у элемента формы с именем "ДатаЗавершения" текст редактирования стал равен '  .  .    '
	# *
	И я нажимаю кнопку выбора у поля "Вид работ"
	Тогда открылось окно 'Виды работ'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'        |
		| '000000014' | 'Вид работ на 4 часа' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	# обязательное поле: Вид работ
	И я нажимаю на кнопку 'Записать'
	Тогда открылось окно '1С:Предприятие'
	# текст сообщения: Не удалось записать "Заявка"!
	И я нажимаю на кнопку 'OK'
	# информационное сообщение
	Когда в логе сообщений TestClient есть сообщения только из списка:
	| 'Не заполнено адресовано' |
	# Предложение: Возможно, было бы правильней выдавать информационное сообщение 'Не заполнено поле Адресовано'
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "РучноеИзменение" стал равен 'Нет'
	И     элемент формы с именем "ПричинаЗавершения" стал равен ''
	И     элемент формы с именем "Номер" стал равен ''
	И     элемент формы с именем "Абонент" стал равен 'Потребитель 1'
	И     элемент формы с именем "ЛицевойСчет" стал равен '000111'
	И     элемент формы с именем "ОбъектОбслуживания" стал равен 'Объект обслуживания 1 (полный)'
	И     элемент формы с именем "ВидРабот" стал равен 'Вид работ на 4 часа'
	И     элемент формы с именем "Содержание" стал равен ''
	И     элемент формы с именем "ТребованияРуководителя" стал равен ''
	И     элемент формы с именем "Декорация1" стал равен 'Декорация1'
	И     элемент формы с именем "Приоритет" стал равен 'Средний'
	И     элемент формы с именем "РадиусОтбораЗаявок" стал равен '15'
	И     элемент формы с именем "Направление" стал равен 'Участок 1'
	И     элемент формы с именем "Адресовано" стал равен ''
	И     элемент формы с именем "Статус" стал равен 'Новая'
	И     элемент формы с именем "СрокИсполненияС" стал равен "$СрокИсполненияС$"
	И     у элемента формы с именем "СрокИсполненияС" текст редактирования стал равен "$СрокИсполненияС$"
	И     элемент формы с именем "СрокИсполнения" стал равен "$СрокИсполнения$"
	И     у элемента формы с именем "СрокИсполнения" текст редактирования стал равен "$СрокИсполнения$"
	И     элемент формы с именем "ПоловинаДня" стал равен ''
	И     элемент формы с именем "ДоступностьООНач" стал равен '08:00'
	И     у элемента формы с именем "ДоступностьООНач" текст редактирования стал равен '08:00'
	И     элемент формы с именем "ДоступностьООКон" стал равен '17:00'
	И     у элемента формы с именем "ДоступностьООКон" текст редактирования стал равен '17:00'
	И     таблица "УстановленноеОборудование" содержит строки:
		| 'N' | 'Оборудование'            |
		| '*' | 'Оборудование 1 Объекта 1' |
		| '*' | 'Оборудование 2 Объекта 1' |
		| '*' | 'Оборудование 3 Объекта 1' |
	И     элемент формы с именем "ПланОбслуживания" стал равен ''
	И     элемент формы с именем "Основание" стал равен ''
	И     элемент формы с именем "Автор" стал равен 'Руководитель1'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	И     у элемента формы с именем "ДатаЗавершения" текст редактирования стал равен '  .  .    '
	# *
	И я нажимаю кнопку выбора у поля "Адресовано"
	Тогда открылось окно 'Выбор пользователя'
	И в таблице "ПользователиСписок" поле с именем "Наименование" имеет значение "Руководитель1"
	И в таблице "ПользователиСписок" я активизирую поле с именем "Наименование"
	И я нажимаю на кнопку с именем 'ВыбратьПользователя'
	Тогда открылось окно 'Заявка (создание) *'
	# обязательное поле: Адресат
	И я нажимаю на кнопку 'Записать'
	# информационное сообщение	
	Тогда в окне сообщений пользователю нет сообщений
	И я запоминаю значение поля с именем "Номер" как "Номер"
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "РучноеИзменение" стал равен 'Нет'
	И     элемент формы с именем "ПричинаЗавершения" стал равен ''
	И     элемент формы с именем "Номер" стал равен '$Номер$'
	И     элемент формы с именем "Абонент" стал равен 'Потребитель 1'
	И     элемент формы с именем "ЛицевойСчет" стал равен '000111'
	И     элемент формы с именем "ОбъектОбслуживания" стал равен 'Объект обслуживания 1 (полный)'
	И     элемент формы с именем "ВидРабот" стал равен 'Вид работ на 4 часа'
	И     элемент формы с именем "Содержание" стал равен ''
	И     элемент формы с именем "ТребованияРуководителя" стал равен ''
	И     элемент формы с именем "Декорация1" стал равен 'Декорация1'
	И     элемент формы с именем "Приоритет" стал равен 'Средний'
	И     элемент формы с именем "РадиусОтбораЗаявок" стал равен '15'
	И     элемент формы с именем "Направление" стал равен 'Участок 1'
	И     элемент формы с именем "Адресовано" стал равен 'Руководитель1'
	И     элемент формы с именем "Статус" стал равен 'Новая'
	И     элемент формы с именем "СрокИсполненияС" стал равен "$СрокИсполненияС$"
	И     у элемента формы с именем "СрокИсполненияС" текст редактирования стал равен "$СрокИсполненияС$"
	И     элемент формы с именем "СрокИсполнения" стал равен "$СрокИсполнения$"
	И     у элемента формы с именем "СрокИсполнения" текст редактирования стал равен "$СрокИсполнения$"
	И     элемент формы с именем "ПоловинаДня" стал равен ''
	И     элемент формы с именем "ДоступностьООНач" стал равен '08:00'
	И     у элемента формы с именем "ДоступностьООНач" текст редактирования стал равен '08:00'
	И     элемент формы с именем "ДоступностьООКон" стал равен '17:00'
	И     у элемента формы с именем "ДоступностьООКон" текст редактирования стал равен '17:00'
	И     таблица "УстановленноеОборудование" содержит строки:
		| 'N' | 'Оборудование'            |
		| '*' | 'Оборудование 1 Объекта 1' |
		| '*' | 'Оборудование 2 Объекта 1' |
		| '*' | 'Оборудование 3 Объекта 1' |
	И     элемент формы с именем "ПланОбслуживания" стал равен ''
	И     элемент формы с именем "Основание" стал равен ''
	И     элемент формы с именем "Автор" стал равен 'Руководитель1'
	И     элемент формы с именем "ДатаЗавершения" стал равен '  .  .    '
	И     у элемента формы с именем "ДатаЗавершения" текст редактирования стал равен '  .  .    '
	# *
	И Я закрываю текущее окно
	# информационное сообщение
	И     в окне сообщений пользователю нет сообщений