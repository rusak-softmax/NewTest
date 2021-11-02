# language: ru
# encoding: utf-8
#parent ua:
@UA17_что_нового_в_версии
#parent uf:
@UF6_текстовые_и_видео_инструкции

@IgnoreOnCIMainBuild



Функциональность: Что нового в релизе 1.2.028

 
Контекст:
	Дано я запускаю SikuliX сервер

	
	

Сценарий: Что нового в релизе 1.2.028

	//Дано текст субтитров "Привет! Я - Ванесса."
	//Дано текст субтитров "В этом видео я расскажу, об основных изменениях в моём новом релизе: 1.2.028."
	Дано видеовставка картинки 'ЛогоДляПервогоКадра' 'Привет! Я - Ванесса. В этом видео я расскажу, об основных изменениях в моём новом релизе: 1.2.028.'
	
	
	#[autodoc.ignorestep]	
	*Давайте пройдёмся по файлу истории и посмотрим, что там нового.
		Дано я нажимаю хоткей "r" "win"
		И я набираю текст "code"
		Дано я нажимаю ENTER
		И я жду картинки "VSC открылся" в течение 10 секунд
		Дано я нажимаю хоткей "o" "ctrl"
		И я жду картинки "All files" в течение 10 секунд
		И я набираю текст "C:\Temp\history.md"
		И я нажимаю ENTER

		
	Дано текст субтитров "Сначала про новые возможности."
	
	#[autodoc.ignorestep]	
	И пауза 2
	
	
	//Новые возможности	
	
	//Несколько голосов в видео.
	И видеовставка 'Несколько голосов в видео'
	*Скажи пожалуйста, а можно ли в одной видео инструкции использовать несколько голосов?
		@YandexTTS: ermil,evil 
		Дано я нажимаю хоткей "f" "ctrl"
		И я помещаю в буфер обмена строку 'Добавить возможность записывать видео-инструкции с несколькими голосами'
		Дано я нажимаю хоткей "v" "ctrl"
	Дано текст субтитров "Совершенно точно можно! Иначе мы бы с тобой сейчас не разговаривали."

	
	*Также возможно в одном видео использовать голоса из сервиса Yandex или Amazon.
		Дано поиск строки в редакторе через буфер обмена 'Использовать голосовые движки Yandex и Amazon в одном сценарии'
	И видеовставка "Спасибо Павлу Олейникову за реализацию этих фич!"

	
	
	//Возможность указывать Intro и Outro видео файлы для автоинструкций
	И видеовставка 'Intro и Outro'
	*Появилась возможность указывать Intro и Outro файлы для видео инструкций.
		Дано поиск строки в редакторе через буфер обмена 'Возможность указывать Intro и Outro видео файлы для автоинструкций'
		
	@YandexTTS: ermil,evil 
	Дано текст субтитров "Это наверное нужно, чтобы можно было указать свою заставку в начале видео?"
	
	Дано текст субтитров "Да, ты абсолютно прав."
	*Также появилась возможность отключить финальный слайд при записи видео и нарисовать рамку на экране.
		Дано я нажимаю хоткей "f" "ctrl"
		И я помещаю в буфер обмена строку 'Реализовать отключение финального слайда при записи видео'
		Дано я нажимаю хоткей "v" "ctrl"
		
		Дано я нажимаю хоткей "f" "ctrl"
		И я помещаю в буфер обмена строку 'Шаг "И я рисую рамку вокруг картинки"'
		Дано я нажимаю хоткей "v" "ctrl"
	
	И видеовставка "Спасибо Светлане Поповой за реализацию этих новых возможностей!"
	
	
	
	//Сохранение настроек клиентов тестирования
	И видеовставка 'Сохранение настроек'
	*Появилась возможность сохранить настройки клиентов тестирования.
		Дано поиск строки в редакторе через буфер обмена 'Не сохраняются настройки "Клиенты тестирования"'
		
	@YandexTTS: ermil,evil 
	Дано текст субтитров "Это наверное нужно для запуска тестов на CI сервере?"
	Дано текст субтитров "Да, иначе придётся эти настройки заполнять вручную."
	И видеовставка "Спасибо Андрею Полетаеву за реализацию этой доработки!"
	

	
	//Редактирование текста сценария.
	И видеовставка 'Редактирование текста сценария'
	*Расширены возможности редактирования текста сценария после накликивания.
		Дано поиск строки в редакторе через буфер обмена 'Команды и горячие клавиши для комментирования и выделения как кода 1C выделенных строк сценария'
	@YandexTTS: ermil,evil 
	Дано текст субтитров "Я думаю на эту тему нужно записать отдельный ролик. Как считаешь"
	Дано текст субтитров "Да. Давай запишем."
	И видеовставка "Спасибо Владимиру Литвиненко за реализацию этой новой ф^ичи!"


	
	
	

	Дано текст субтитров "Ещё были исправлены ошибки и сделано много других полезных доработок."
	И видеовставка "Подробности, как обычно, можно найти в файле history.MD"
	
								
	Дано текст субтитров "На этом всё. Подписывайтесь, ставьте лайки, до новых встреч!"
	Дано видеовставка "Ванесса! Тесты - есть!"
	
	#[autodoc.ignorestep]
	И я закрываю текстовый редактор
	
					