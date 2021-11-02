# language: ru
# encoding: utf-8
#parent uf:
@UF6_текстовые_и_видео_инструкции
#parent ua:
@UA41_формировать_текстовые_инструкции

@IgnoreOnOFBuilds
@IgnoreOn82Builds
@IgnoreOnWeb
@tree

Функциональность: Снятие скриншов при выполнении произвольного шага

	Сценарий: Снятие скриншота компонентой при тегировании шага специальным тегом.
		Дано я очищаю каталог "$КаталогИнструментов$\tools\ScreenShotsTest"
		Дано Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
		И я перехожу к закладке с именем "ГруппаНастройки"
		И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
		И В открытой форме я устанавливаю флаг "Формировать скриншот при ошибке"
		И в поле каталог скриншотов я указываю путь к относительному каталогу "tools\ScreenShotsTest"
		И я перехожу к закладке с именем "СтраницаСервисОсновные"
		И я перехожу к закладке с именем "СтраницаСкриншоты"
		
		И я устанавливаю флаг с именем 'ИспользоватьКомпонентуVanessaExt1'
		И я устанавливаю флаг с именем 'ИспользоватьВнешнююКомпонентуДляСкриншотов'
		И из выпадающего списка с именем "СпособСнятияСкриншотовВнешнейКомпонентой" я выбираю точное значение 'Весь экран'
		
		И я перехожу к закладке "Автоинструкции"
		Затем В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкиСнятияСкриншотаШага"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		И в каталоге скриншотов появился хотя бы один скриншот	
		
		
	Сценарий: Снятие скриншота внешней программой при тегировании шага специальным тегом.
		Дано я очищаю каталог "$КаталогИнструментов$\tools\ScreenShotsTest"
		Дано Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
		И я перехожу к закладке с именем "ГруппаНастройки"
		И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
		И В открытой форме я устанавливаю флаг "Формировать скриншот при ошибке"
		И в поле каталог скриншотов я указываю путь к относительному каталогу "tools\ScreenShotsTest"
		И я перехожу к закладке с именем "СтраницаСервисОсновные"
		И я перехожу к закладке с именем "СтраницаСкриншоты"
		И В открытой форме в поле "Команда создания скриншотов" я ввожу команду для IrfanView 
		И я перехожу к закладке "Автоинструкции"
		Затем В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкиСнятияСкриншотаШага"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		И в каталоге скриншотов появился хотя бы один скриншот