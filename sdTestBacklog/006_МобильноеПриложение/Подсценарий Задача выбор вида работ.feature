#language: ru

@ExportScenarios

Функционал: Выбор вида работ в задаче

Как Руководитель1
Я хочу заполнить в форме задачи вид работ 
Чтобы не повторять код заполнения в каждом сценарии 


Сценарий: Я заполняю вид работы "ВидРаботы" в задаче


	И я нажимаю кнопку выбора у поля с именем "ВидРабот"
	Тогда открылось окно 'Виды работ'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'ВидРаботы' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'

