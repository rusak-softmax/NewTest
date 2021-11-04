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

Сценарий: Формирование заявки с обязательными полями КРОМЕ поля Объект обслуживания

	Когда я активизирую поле с именем "СтраницаКарта"
	Когда в таблице "СписокЗаявок" я нажимаю на кнопку с именем 'СписокЗаявокКнопкаСоздать'
	Тогда открылось окно 'Заявка (создание)'
	# обязательное поле: Сроки исполнения 
	Тогда значение поля с именем "Дата" содержит текст "$Дата$"
	Тогда значение поля с именем "СрокИсполненияС" содержит текст "$СрокИсполненияС$"
	Тогда значение поля с именем "СрокИсполнения" содержит текст "$СрокИсполнения$"
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Абонент" стал равен ''
	И     элемент формы с именем "ЛицевойСчет" стал равен ''
	И     элемент формы с именем "ОбъектОбслуживания" стал равен ''
	И     элемент формы с именем "ВидРабот" стал равен ''
	И     элемент формы с именем "Направление" стал равен ''
	И     элемент формы с именем "Адресовано" стал равен ''
	И     элемент формы с именем "СрокИсполненияС" стал равен "$СрокИсполненияС$"
	И     у элемента формы с именем "СрокИсполненияС" текст редактирования стал равен "$СрокИсполненияС$"
	И     элемент формы с именем "СрокИсполнения" стал равен "$СрокИсполнения$"
	И     у элемента формы с именем "СрокИсполнения" текст редактирования стал равен "$СрокИсполнения$"
	Тогда в таблице "УстановленноеОборудование" количество строк "равно" 0
	# *
	И я нажимаю кнопку выбора у поля "Абонент"
	Тогда открылось окно 'Потребители'
	И в таблице "Список" я перехожу к строке:
		| 'Лицевой счет'       | 'Абонент'  |
		| '000111' | 'Потребитель 1' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	# обязательное поле: Абонент
	# обязательное поле: Объект обслуживания 
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Абонент" стал равен 'Потребитель 1'
	И     элемент формы с именем "ЛицевойСчет" стал равен '000111'
	И     элемент формы с именем "ОбъектОбслуживания" стал равен 'Объект обслуживания 1 (полный)'
	И     элемент формы с именем "ВидРабот" стал равен ''
	И     элемент формы с именем "Направление" стал равен 'Участок 1'
	И     элемент формы с именем "Адресовано" стал равен ''
	И     элемент формы с именем "СрокИсполненияС" стал равен "$СрокИсполненияС$"
	И     у элемента формы с именем "СрокИсполненияС" текст редактирования стал равен "$СрокИсполненияС$"
	И     элемент формы с именем "СрокИсполнения" стал равен "$СрокИсполнения$"
	И     у элемента формы с именем "СрокИсполнения" текст редактирования стал равен "$СрокИсполнения$"
	И     таблица "УстановленноеОборудование" содержит строки:
		| 'N' | 'Оборудование'            |
		| '*' | 'Оборудование 1 Объекта 1' |
		| '*' | 'Оборудование 2 Объекта 1' |
		| '*' | 'Оборудование 3 Объекта 1' |
	# *
	И я нажимаю кнопку выбора у поля "Вид работ"
	Тогда открылось окно 'Виды работ'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'        |
		| '000000014' | 'Вид работ на 4 часа' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка (создание) *'
	# обязательное поле: Вид работ
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Абонент" стал равен 'Потребитель 1'
	И     элемент формы с именем "ЛицевойСчет" стал равен '000111'
	И     элемент формы с именем "ОбъектОбслуживания" стал равен 'Объект обслуживания 1 (полный)'
	И     элемент формы с именем "ВидРабот" стал равен 'Вид работ на 4 часа'
	И     элемент формы с именем "Направление" стал равен 'Участок 1'
	И     элемент формы с именем "Адресовано" стал равен ''
	И     элемент формы с именем "СрокИсполненияС" стал равен "$СрокИсполненияС$"
	И     у элемента формы с именем "СрокИсполненияС" текст редактирования стал равен "$СрокИсполненияС$"
	И     элемент формы с именем "СрокИсполнения" стал равен "$СрокИсполнения$"
	И     у элемента формы с именем "СрокИсполнения" текст редактирования стал равен "$СрокИсполнения$"
	И     таблица "УстановленноеОборудование" содержит строки:
		| 'N' | 'Оборудование'            |
		| '*' | 'Оборудование 1 Объекта 1' |
		| '*' | 'Оборудование 2 Объекта 1' |
		| '*' | 'Оборудование 3 Объекта 1' |
	# *
	И я нажимаю кнопку выбора у поля "Адресовано"
	Тогда открылось окно 'Выбор пользователя'
	И в таблице "ПользователиСписок" поле с именем "Наименование" имеет значение "Руководитель1"
	И в таблице "ПользователиСписок" я активизирую поле с именем "Наименование"
	И я нажимаю на кнопку с именем 'ВыбратьПользователя'
	Тогда открылось окно 'Заявка (создание) *'
	# обязательное поле: Адресат
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Абонент" стал равен 'Потребитель 1'
	И     элемент формы с именем "ЛицевойСчет" стал равен '000111'
	И     элемент формы с именем "ОбъектОбслуживания" стал равен 'Объект обслуживания 1 (полный)'
	И     элемент формы с именем "ВидРабот" стал равен 'Вид работ на 4 часа'
	И     элемент формы с именем "Направление" стал равен 'Участок 1'
	И     элемент формы с именем "Адресовано" стал равен 'Руководитель1'
	И     элемент формы с именем "СрокИсполненияС" стал равен "$СрокИсполненияС$"
	И     у элемента формы с именем "СрокИсполненияС" текст редактирования стал равен "$СрокИсполненияС$"
	И     элемент формы с именем "СрокИсполнения" стал равен "$СрокИсполнения$"
	И     у элемента формы с именем "СрокИсполнения" текст редактирования стал равен "$СрокИсполнения$"
	И     таблица "УстановленноеОборудование" содержит строки:
		| 'N' | 'Оборудование'            |
		| '*' | 'Оборудование 1 Объекта 1' |
		| '*' | 'Оборудование 2 Объекта 1' |
		| '*' | 'Оборудование 3 Объекта 1' |
	# *
	И я нажимаю кнопку очистить у поля с именем "ОбъектОбслуживания"
	# обязательное поле: Должен сработать запрет создания ЗАЯВКИ без заполненного обязательного поля Объект обслуживания
	# Сегмент с контрольными точками:
	# *
	# *
	И я нажимаю на кнопку 'Записать'
	# должно быть:
	# Тогда открылось окно '1С:Предприятие'
	# текст сообщения: Не удалось записать "Заявка"!
	# И я нажимаю на кнопку 'OK'
	# информационное сообщение
	# Когда в логе сообщений TestClient есть сообщения только из списка:
	# | 'Не заполнено поле Объект обслуживания' |
	# Предложение: Возможно, было бы правильней выдавать информационное сообщение 'Не заполнено поле Объект обслуживания'
	# И Я закрываю текущее окно
	# Тогда открылось окно '1С:Предприятие' 
	# текст сообщения: Данные были изменены. Сохранить изменения?
	# И я нажимаю на кнопку 'Нет'
	# информационное сообщение	
	Тогда в окне сообщений пользователю нет сообщений
	И я запоминаю значение поля с именем "Номер" как "Номер"
	# Сегмент с контрольными точками:
	# *
	И     элемент формы с именем "Абонент" стал равен 'Потребитель 1'
	И     элемент формы с именем "ЛицевойСчет" стал равен '000111'
	И     элемент формы с именем "ОбъектОбслуживания" стал равен ''
	И     элемент формы с именем "ВидРабот" стал равен 'Вид работ на 4 часа'
	И     элемент формы с именем "Направление" стал равен ''
	И     элемент формы с именем "Адресовано" стал равен 'Руководитель1'
	И     элемент формы с именем "СрокИсполненияС" стал равен "$СрокИсполненияС$"
	И     у элемента формы с именем "СрокИсполненияС" текст редактирования стал равен "$СрокИсполненияС$"
	И     элемент формы с именем "СрокИсполнения" стал равен "$СрокИсполнения$"
	И     у элемента формы с именем "СрокИсполнения" текст редактирования стал равен "$СрокИсполнения$"
	Тогда в таблице "УстановленноеОборудование" количество строк "равно" 0
	# *
	И Я закрываю текущее окно
	# информационное сообщение
	И     в окне сообщений пользователю нет сообщений