# language: ru
# encoding: utf-8
#parent uf:
@UF8_Turbo_Gherkin
#parent ua:
@UA39_использовать_экспортные_и_параметризованные_сценарии

@tree
@IgnoreOnOFBuilds
@IgnoreOn82Builds
@IgnoreOnWeb

Функционал: Передача параметра в сценарий регистр букв
	Как Разработчик
	Я Хочу чтобы я мог использовать параметризованные  вложенные сценарии
	Чтобы я мог упростить вызов однотипных сценариев
 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И    Я открываю VanessaAutomation в режиме TestClient 
 
Сценарий: Передач параметра во вложенный сценарий первого и второго уровня регистр букв
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкиЗагрузкиШагаБиблиотекиСДругимРегистромБукв"
	И я перехожу к закладке с именем "ГруппаКаталогиБиблиотек"
	Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
		И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
		И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Имя процедуры' |
		| ''                             |
		| ''                             |
		| ''                             |
		| 'ЯЗакрываюСеансTESTCLIENT'     |
		| 'ЯЗакрываюСеансTESTCLIENT'     |