# language: ru
# encoding: utf-8
#parent uf:
@UF3_формирование_features
#parent ua:
@UA32_Создание_фиче_файлов

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839

@tree

Функционал: ЗагрузчикПользовательскихНастроек
 
Контекст: 
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	
Сценарий: ЗагрузчикПользовательскихНастроек
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗагрузчикПользовательскихНастроек/ЗагрузчикПользовательскихНастроек01"
	И В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Объект.РежимСамотестирования = Ложь;'
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я снимаю флаг с именем 'ПроверкаРаботыVanessaAutomationВРежимеTestClient'

	
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И из выпадающего списка с именем "ПоставщикПользовательскихНастроек" я выбираю точное значение 'FILE'
	И в поле с именем 'АдресПользовательскихНастроек' я ввожу текст '$КаталогИнструментов$\features\Core\Plugins\files\Test1.json'
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
