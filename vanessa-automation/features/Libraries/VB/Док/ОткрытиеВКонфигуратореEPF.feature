# language: ru
# encoding: utf-8
#parent ua:
@UA10_генерировать_EPF_файлы
#parent uf:
@UF1_загрузка_и_обработка_features

@IgnoreOnCIMainBuild
@ExportScenarios


Функционал: Открытие в конфигураторе EPF
	Как Разработчик
	Я Хочу чтобы я мог открыть EPF файл в конфигураторе
	Чтобы я мог потом менять текст процедур EPF файла
 
	
Сценарий: Я открываю в конфигураторе созданный файл "ИмяФайла"

	Когда я в диалоге открытия файлов конфигуратора указываю "ИмяФайла"
	И в конфигураторе я открываю основную форму обработки
	И я перехожу на закладку Модуль
	И я сворачиваю область Служебные функции
	И я заменяю строку "ВызватьИсключение" на "//ВызватьИсключение"