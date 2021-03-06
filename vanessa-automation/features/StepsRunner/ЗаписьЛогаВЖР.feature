# language: ru
# encoding: utf-8
#parent uf:
@UF5_формирование_результатов_выполнения_сценариев
#parent ua:
@UA20_формировать_прочие_отчеты

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839

@tree

Функционал: Запись лога выполнения шагов в журнал регистрации
 
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Запись лога выполнения шагов в журнал регистрации
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗаписьВЖР/ЗаписьВЖР01"

	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И я устанавливаю флаг с именем 'ДелатьЛогВыполненияСценариевВЖР'
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюСвернутьДоСценариев' на элементе формы с именем "ДеревоТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'        | 'Статус'  |
		| 'ЗаписьВЖР01.feature' | ''        |
		| 'ЗаписьВЖР01'         | ''        |
		| 'ЗаписьВЖР01'         | 'Success' |



