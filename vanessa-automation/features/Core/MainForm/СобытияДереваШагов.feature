# language: ru
# encoding: utf-8
#parent uf:
@UF1_загрузка_и_обработка_features
#parent ua:
@UA38_манипулировать_загруженными_фичами

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@tree

Функционал: События дерева шагов
 
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий



Сценарий: События дерева шагов. Перетаскивание.
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
		|'Файл = Новый Файл(Объект.КаталогИнструментов + "\features\Support\Templates\СобытияДерева\ДляСобытияДерева.feature");'|
		|'ПараметрыПеретаскивания = Новый Структура;'|
		|'ПараметрыПеретаскивания.Вставить("Значение",Файл);'|
		|'ДеревоТестовПеретаскивание(Неопределено, ПараметрыПеретаскивания, Истина, Неопределено, Неопределено);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'

	И пауза 5

	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляСобытияДерева.feature'                                            | ''        |
		| 'ДляСобытияДерева'                                                    | ''        |
		| 'ДляСобытияДерева'                                                    | ''        |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | ''        |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' | ''        |





Сценарий: События дерева шагов. Событие добавление строки.
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "СобытияДерева/ДляСобытияДерева"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                                                      |
		| 'И Я запоминаю значение выражения '2' в переменную "ИмяПеременной"' |


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'ДеревоТестовПередНачаломДобавления(Неопределено,Ложь,Истина,Неопределено,Неопределено,Неопределено);'
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'


	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляСобытияДерева.feature'                                            | ''        |
		| 'ДляСобытияДерева'                                                    | ''        |
		| 'ДляСобытияДерева'                                                    | ''        |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | 'Success' |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' | ''        |



Сценарий: События дерева шагов. Перед начало изменения.
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "СобытияДерева/ДляСобытияДерева"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                                                      |
		| 'И Я запоминаю значение выражения '2' в переменную "ИмяПеременной"' |


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'ДеревоТестовПередНачаломИзменения(Неопределено,Ложь);'
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'

	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляСобытияДерева.feature'                                            | ''        |
		| 'ДляСобытияДерева'                                                    | ''        |
		| 'ДляСобытияДерева'                                                    | 'Success' |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | 'Success' |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' | 'Success' |



Сценарий: События дерева шагов. Перед удалением.
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "СобытияДерева/ДляСобытияДерева"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                                                      |
		| 'И Я запоминаю значение выражения '2' в переменную "ИмяПеременной"' |


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'ДеревоТестовПередУдалением(Неопределено,Ложь);'
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'

	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляСобытияДерева.feature'                                            | ''        |
		| 'ДляСобытияДерева'                                                    | ''        |
		| 'ДляСобытияДерева'                                                    | 'Success' |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | 'Success' |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' | 'Success' |

