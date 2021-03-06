# language: ru
# encoding: utf-8
#parent uf:
@UF6_текстовые_и_видео_инструкции
#parent ua:
@UA31_описание_настроек_и_инструкции

@IgnoreOnCIMainBuild



Функциональность: Исследователь формы

 
Контекст:
	Дано я запускаю SikuliX сервер
	Дано Я открываю Vanessa-Automation в TestClient для записи автодокументации "TestManager"

	И я устанавливаю профиль цвета "MainForm"
		| 'Шрифт'      | 'arial' |
		| 'ЦветФона'   | 'white' |
		| 'ЦветШрифта' | 'black' |
		| 'Размер'     | '18'    |	
		
	И я устанавливаю основной профиль цвета "MainForm"
	

Сценарий: Исследователь формы

	
	@YandexTTS: ermil,evil 
	И текст субтитров "Привет, Ванесса! Расскажи пожалуйста, что такое Исследователь формы?"

	//@YandexTTS: oksana,good 
	И текст субтитров "Привет! Давай расскажу."


	
	*Сначала подкл^ючим клиент тестирования на закладке Клиенты тестирования.
		Затем клик на картинку "Клиенты тестирования"
		Затем клик на картинку "ConnectTestClient"
		//И в таблице "ДанныеКлиентовТестирования" я нажимаю на кнопку с именем 'ТестКлиентПодключить'
		
	#[autodoc.ignorestep]	
	И пауза 12
		
	* И откроем в нём какую-нибудь форму.
		Затем клик на картинку "Основная"
		Затем клик на картинку "Справочник1"
	
	* Расположим ^окна поудобнее, чтобы было видно и менеджера тестирования и клиента тестирования.
		Дано я нажимаю хоткей "right" "win"
		Затем клик на картинку "Второй элемент"
		Затем клик на картинку "Vanessa_Automation"
		Затем клик на картинку "Работа с UI"
		Дано я нажимаю хоткей "left" "win"
			
	* Теперь откроем исследователь формы в этом пункте меню. 
		Затем клик на картинку "Форма"
		Затем клик на картинку "Исследователь формы"
		
	И видеовставка "Также это можно сделать комбинацией клавиш. Alt+E."

	* Исследователь формы - это интерактивный помощник, который позволяет получить максимум информации о текущей форме клиента тестирования.
		И пауза 3
		
	@YandexTTS: ermil,evil 
	И текст субтитров "Интересно! А что он может?"


	* Для начала он показывает информацию о текущем элементе формы. Давай сделаем активным колонку с заголовком код.
		И пауза 2
		Затем клик на картинку "000000001"
	
	#[autodoc.ignorestep]	
	И пауза 2
	
	* При этом исследователь формы увидел изменение активного элемента.
		И я рисую стрелку в автоинструкции от "" до "КодИсследовательФормы"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '2000'          |
			|'ТочкаКуда'     | 'СерединаПраво' |
			|'Толщина'       | '10'            |
	

	* Также можно активизировать строку у исследователя формы, и тогда будет активизирован соответствующий элемент в клиенте тестирования.
		И пауза 3


	* Давай сделаем активной эту строку колонки Наименование.
		Затем клик на картинку "НаименованиеИсследовательФормы"

	* При этом текущей колонкой в клиенте тестирования тоже стала колонка Наименование.
		И я рисую стрелку в автоинструкции от "" до "ПервыйЭлементТекущаяКолонка"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '2000'          |
			|'ТочкаКуда'     | 'СерединаЛево'  |
			|'Толщина'       | '10'            |


	@YandexTTS: ermil,evil 
	И текст субтитров "Понял. А что это за табло с шагами слева внизу?"


	* Это шаги, которые подсказывает исследователь для данного элемента формы. Например шаги, которые позволяют активизировать элемент.
		И я рисую рамку вокруг картинки "ШагиАктивизацииЭлемента"
			|'Цвет'          | 'Зеленый'        |
			|'Длительность'  | '5000'           |	
			
		И я рисую стрелку от "" до "ШагиАктивизацииЭлемента"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '5000'          |
			|'ТочкаКуда'     | 'СерединаВерх'  |
			|'Толщина'       | '10'            |
			
		
		И пауза 2

	#[autodoc.ignorestep]	
	И пауза 5

	@YandexTTS: ermil,evil 
	И текст субтитров "Подсказка шагов. Это здорово!"


	* Давай ещё покажу что умеет исследователь формы. Для этого развернём его на полный экран.
			Дано я нажимаю хоткей "up" "win"
			И пауза 1
			Дано я нажимаю хоткей "esc"
			Дано я нажимаю хоткей "up" "win"



	* Он позволяет получить ещё больше информации. Для этого надо выбрать опцию, показывающую все колонки.
		Затем клик на картинку "ИсследовательФормыМенюКолонок"
		Затем клик на картинку "ИсследовательФормыВсеКолонки"

	* Теперь нужно нажать на кнопку обновления данных.
		Затем клик на картинку "ИсследовательФормыОбновитьДанные"

	#[autodoc.ignorestep]	
	И пауза 5

	* Появилась дополнительная информация о видимости и доступности полей.
		И я рисую стрелку от "" до "ИсследовательФормыДопСвойстваПолей"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '5000'          |
			|'ТочкаКуда'     | 'СерединаЛево'  |
			|'Толщина'       | '10'            |
		
		И пауза 2
			



	#[autodoc.ignorestep]	
	И пауза 5
	
	
	* Также можно узнать информацию о заголовке активного окна и названии формы, которая сейчас открыта в клиенте тестирования.
		Затем клик на картинку "ЗаголовкиОкнаИФормы"	
		И я рисую стрелку от "" до "ИсследовательФормыИмяФормы"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '5000'          |
			|'ТочкаКуда'     | 'СерединаПраво' |
			|'Толщина'       | '10'            |
			
	#[autodoc.ignorestep]	
	И пауза 5			
			
	@YandexTTS: ermil,evil 
	И текст субтитров "Спасибо Ванесса! Это очень полезный инструмент!"
			
	Дано текст субтитров "На этом всё. Подписывайтесь, ставьте лайки, до новых встреч!"
	Дано видеовставка "Ванесса! Тесты - есть!"
	
	
					