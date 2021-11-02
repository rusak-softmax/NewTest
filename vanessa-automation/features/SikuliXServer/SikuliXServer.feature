# language: ru
#parent uf:
@UF2_запуск_сценариев_на_выполнение
#parent ua:
@UA15_управлять_SikuliX

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOnFastCheck
@IgnoreOnUFSovm82Builds
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315


@tree


Функциональность: Проверка работы SikulX сервера (SikulX server)

Сценарий: Заполнение профилей цветов
	Дано Я закрыл все окна клиентского приложения
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	И В командном интерфейсе я выбираю 'Основная' 'Открыть vanessa automation'
	Тогда открылось окно '*Vanessa Automation'

	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
	И я разворачиваю группу с именем "ГруппаSikuliXServer"
	И я устанавливаю флаг с именем 'ИспользоватьSikuliXСервер'
	И я устанавливаю флаг с именем 'ЗаписьВидеоЭмулироватьДвиженияМышки'

	И я устанавливаю флаг с именем 'ЗаписьВидеоЭмулироватьДвиженияМышки'
	И в таблице "ПрофилиПоискаКартинокСТекстом" я нажимаю на кнопку с именем 'ПрофилиЦветовЗаполнитьТиповыеПрофилиЦветов'

	Тогда таблица "ПрофилиПоискаКартинокСТекстом" стала равной:
		| 'Имя'              | 'Шрифт' | 'Цвет фона' | 'Цвет шрифта' | 'Размер' |
		| 'CommandInterface' | 'arial' | '#FBED9E'   | 'black'       | '13'     |
		| 'MainForm'         | 'arial' | 'white'     | 'black'       | '13'     |



Сценарий: Каталог скриптов SikuliX по умолчанию
	Дано Я закрыл все окна клиентского приложения
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	И В командном интерфейсе я выбираю 'Основная' 'Открыть vanessa automation'
	Тогда открылось окно '*Vanessa Automation'
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
	И я перехожу к закладке с именем "ГруппаSikuliXServer"
	И я разворачиваю группу с именем "ГруппаSikuliXServer"
	И я устанавливаю флаг с именем 'ИспользоватьSikuliXСервер'
	И в таблице "ДеревоТестов" я активизирую поле с именем "ДеревоТестовИмя"
	И я нажимаю на кнопку с именем 'КаталогиСкриптовSikuliXПоУмолчанию'
	
	И Я запоминаю значение выражения '$КаталогИнструментов$\tools\sikuli\\' в переменную "ЗначениеКаталога"
	
	И элемент формы с именем "КаталогиСкриптовSikuliX" стал равен "$ЗначениеКаталога$"


Сценарий: Вывод ошибки при падении скрипта
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И я устанавливаю настройки SikuliX сервера
	
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	И я устанавливаю флаг 'Формировать скриншот при ошибке'
	И я устанавливаю флаг 'Снимать скриншот каждого окна 1С'
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И я перехожу к закладке с именем "СтраницаСкриншоты"
	И В открытой форме в поле "Команда создания скриншотов" я ввожу команду для IrfanView 
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	И в поле каталог скриншотов я указываю путь к относительному каталогу "tools\ScreenShotsTest"
	
	И я перехожу к закладке с именем "СтраницаВыполнениеСценариев"
	И в поле с именем 'ТаймаутДляАсинхронныхШагов' я ввожу текст '200'
	И я перехожу к следующему реквизиту
	
	И я перехожу к закладке "Запуск сценариев"
	
	
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И я перехожу к закладке "Запуск сценариев"

	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОшибкиSikuliXServer"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient 300
	
	И элемент формы с именем "Статистика" стал равен '1/1/1, 0/1/0'
	И пауза 30

	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient 300
	И элемент формы с именем "Статистика" стал равен '1/1/1, 0/1/0'

	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                                                |
		| 'Затем я выполняю скрипт SikuliX "ClickToVspomogatelnayaTab"' |
	И в таблице "ДеревоТестов" я выбираю текущую строку
	Тогда открылось окно 'Детали ошибки'
	Тогда значение поля с именем "ТекстОшибки" содержит текст "FindFailed"
	И Я закрываю окно 'Детали ошибки'
	
Сценарий: Запуск простого скрипта SikulX через SikulX server
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	Дано Я закрыл все окна клиентского приложения

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	И я устанавливаю настройки SikuliX сервера
	
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И я перехожу к закладке "Запуск сценариев"
	
	
	
	
	И я загружаю служебную фичу и устанавливаю настройки
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиSikuliXServer"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
			
	И в таблице "ДеревоТестов" я разворачиваю строку:
		| 'Наименование'                                                                |
		| 'Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий' |
	И в таблице "ДеревоТестов" я разворачиваю строку:
		| 'Наименование'                              |
		| 'И в таблице "Список" я перехожу к строке:' |
		
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                                | 'Статус'  |
		| 'ФичаДляПроверкиSikuliXServer.feature'                                        | ''        |
		| 'ФичаДляПроверкиSikuliXServer'                                                | ''        |
		| 'Для ФичаДляПроверкиSikuliXServer'                                            | 'Success' |
		| 'Когда я удаляю все элементы Справочника "Справочник1"'                       | 'Success' |
		| 'Когда я удаляю все элементы Справочника "Справочник2"'                       | 'Success' |
		| 'Когда я создаю fixtures по макету "Макет"'                                   | 'Success' |
		| 'Дано Я закрыл все окна клиентского приложения'                               | 'Success' |
		| 'И я закрываю сеанс TESTCLIENT'                                               | 'Success' |
		| 'Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий' | ''        |
		| 'Дано Я открыл новый сеанс TestClient или подключил уже существующий'         | 'Success' |
		| 'И Я закрыл все окна клиентского приложения'                               | 'Success' |
		| 'И В командном интерфейсе я выбираю \'Основная\' \'Справочник1\''             | 'Success' |
		| 'Тогда открылось окно \'Справочник1\''                                        | 'Success' |
		| 'И в таблице "Список" я перехожу к строке:'                                   | 'Success' |
		| '\| \'Наименование\'       \|'                                                | ''        |
		| '\| \'Тестовый Элемент 2\' \|'                                                | ''        |
		| 'И в таблице "Список" я выбираю текущую строку'                               | 'Success' |
		| 'Тогда открылось окно \'Тестовый Элемент 2*\''                                | 'Success' |
		| 'Затем клик на картинку "Вспомогательная"'                                    | 'Success' |
		| 'Затем клик на картинку "Основа"'                                             | 'Success' |
		| 'Затем я выполняю скрипт SikuliX "ClickToVspomogatelnayaTab"'                 | 'Success' |
		| 'Затем клик на картинку "Проверка кнопок"'                                    | 'Success' |

	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
	И я нажимаю на кнопку с именем 'СброситьПодключениеSikuliXСервера'

	
Сценарий: Закрыть TestClient, который был открыт из второго TestManager. Запуск простого скрипта SikulX через SikulX server.
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	Дано Я закрыл все окна клиентского приложения кроме "*Vanessa Automation"
	И я загружаю служебную фичу и устанавливаю настройки
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
			И у элемента "Сценарии выполнены" я жду значения "Да" в течение 20 секунд
	И я закрываю TestClient "TM"	
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'
	

Сценарий: Установка дополнительных утилит для работы с видео из проекта UIToolsFor1C.
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	Когда Я открываю VanessaAutomation в режиме TestClient

	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке "Автоинструкции"
	И я перехожу к закладке "SikuliX server"
	И я разворачиваю группу с именем "ГруппаSikuliXServer"
	И я устанавливаю флаг 'Использовать SikuliX сервер'
	И я нажимаю на кнопку 'Установить сервисные утилиты'
	Тогда открылось окно 'Сервисные утилиты'
	И я нажимаю на кнопку 'Да'
	И пауза 10
	Затем количество файлов в каталоге "$КаталогИнструментов$/tools/VideoTools" я запоминаю как "КоличествоФайлов"
	Тогда переменная "КоличествоФайлов" имеет значение 11	