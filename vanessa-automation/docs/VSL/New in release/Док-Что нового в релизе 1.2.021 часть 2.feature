# language: ru
# encoding: utf-8
#parent ua:
@UA17_что_нового_в_версии
#parent uf:
@UF6_текстовые_и_видео_инструкции

@IgnoreOnCIMainBuild



Функциональность: Что нового в релизе 1.2.021. Часть 2.

 
Контекст:
	Дано я запускаю SikuliX сервер

	
	

Сценарий: Что нового в релизе 1.2.021. Часть 2.

	Дано текст субтитров "Привет! Я - Ванесса."
	Дано текст субтитров "В этом видео я продолжу рассказ, что нового и зачётного появилось в моём новом релизе: 1.2.021."
	
	#[autodoc.ignorestep]
	*Давайте пробежимся по файлу истории и посмотрим что там нового.
		Дано я нажимаю хоткей "r" "win"
		И я набираю текст "code"
		Дано я нажимаю ENTER
		И я жду картинки "VSC открылся" в течение 10 секунд
		Дано я нажимаю хоткей "o" "ctrl"
		И я жду картинки "All files" в течение 10 секунд
		И я набираю текст "C:\Temp\history.md"
		И я нажимаю ENTER
		//переход к нижней строке, чтобы в редакторе текст оказался в верхней половине экрана
		Дано поиск строки в редакторе через буфер обмена 'При формировании автоинструкций при вызове подсценария можно проигнорировать несколько шагов в начале сценария и несколько шагов в конце сценария'
		Дано поиск строки в редакторе через буфер обмена 'Добавлен шаг, помещающий текст в буфер обмена. #202'
		

	
	//Новые шаги
	Дано текст субтитров "Теперь про новые шаги."
	
	
	И видеовставка "Работа с буфером обмена."		
	*Появился шаг, который позволяет поместить строку в буфер обмена.
		Дано поиск строки в редакторе через буфер обмена 'И я помещаю в буфер обмена строку "Нужная строка"'
	Дано текст субтитров "Шаг нужен, когда нужно проверить вставку в поле значения из буфера обмена."
	
	
	И видеовставка "Проверка версии конфигурации."		
	*Появился шаг, который позволяет прочитать версию тестируемой конфигурации.
		Дано поиск строки в редакторе через буфер обмена 'И я запоминаю версию конфигурации "ИмяПодсистемы" как "ИмяПеременной"'
	Дано текст субтитров "Шаг нужен, когда один и тот же сценарий проверяет работу разных версий конфигурации."
	Дано текст субтитров "Зная текущую версию, проще создавать универсальные сценарии."
	Дано текст субтитров "Для работы шага необходимо наличие БСП."

	
	И видеовставка "Работа с деревом значений."		
	*Появились шаги, которые разворачивают дерево значений с подчиненными узлами.
		Дано поиск строки в редакторе через буфер обмена 'И    в таблице "ИмяТаблицы" я разворачиваю текущую строку с подчиненными'
	Дано текст субтитров "Для работы шагов необходима версия платформы 8.3.13 без режима совместимости."

	#[autodoc.ignorestep]
	Дано поиск строки в редакторе через буфер обмена 'И в таблице клиентов тестирования я активизирую строку \'Этот клиент\''

	
	И видеовставка "Подключение клиента тестирования."		
	*Появился шаг, который переподключает клиента тестирования, который был запущен ранее.
		Дано поиск строки в редакторе через буфер обмена 'Когда Я подключаю уже запущенный клиент тестирования с параметрами'
	Дано текст субтитров "Такая проверка может понадобиться, когда клиент тестирования запускается из стороннего приложения."





			
	Дано текст субтитров "На этом всё. Подписывайтесь, ставьте лайки, до новых встреч!"
	Дано видеовставка "Ванесса! Тесты - есть!"
	
	#[autodoc.ignorestep]
	И я закрываю текстовый редактор
	
					