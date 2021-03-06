# language: ru
# encoding: utf-8
#parent uf:
@UF8_Turbo_Gherkin
#parent ua:
@UA39_использовать_экспортные_и_параметризованные_сценарии

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree


Функциональность: Проверка передачи параметров структуры сценария в подсценарий




Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	
	
Сценарий: Проверка передачи параметров структуры сценария в подсценарий
	Когда Я открываю VanessaAutomation в режиме TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаПередачиПараметровСтруктурыСценарияВПодсценарий"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                                                                 |
		| 'ДляПроверкаПередачиПараметровСтруктурыСценарияВПодсценарий.feature'                                           |
		| 'ДляПроверкаПередачиПараметровСтруктурыСценарияВПодсценарий 1'                                                   |
		| 'ДляПроверкаПередачиПараметровСтруктурыСценарияВПодсценарий'                                                   |
		| 'И вызов экспортного сценария для структуры сценария проверка передачи параметров "111"'                       |
		| 'Когда Простой шаг \'111\''                                                                                    |
		| 'И внутренний шаг <ПараметрСтруктурыСценария>'                                                                 |
		| 'И вызов экспортного сценария для структуры сценария проверка передачи параметров <ПараметрСтруктурыСценария>' |
		| 'Когда Простой шаг <ПараметрСтруктурыСценария>'                                                                |
		| 'И вызов экспортного сценария для структуры сценария проверка передачи параметров "333"'                       |
		| 'Когда Простой шаг \'333\''                                                                                    |
		| 'Примеры'                                                                                                      |
		| '\| ПараметрСтруктурыСценария \|'                                                                              |
		| '\| \'Значение1\'               \|'                                                                            |
		| 'И вызов экспортного сценария для структуры сценария проверка передачи параметров "111"'                       |
		| 'Когда Простой шаг \'111\''                                                                                    |
		| 'И внутренний шаг "Значение1"'                                                                                 |
		| 'И вызов экспортного сценария для структуры сценария проверка передачи параметров "Значение1"'                 |
		| 'Когда Простой шаг "Значение1"'                                                                                |
		| 'И вызов экспортного сценария для структуры сценария проверка передачи параметров "333"'                       |
		| 'Когда Простой шаг \'333\''                                                                                    |
		| '\| \'Значение2\'               \|'                                                                            |
		| 'И вызов экспортного сценария для структуры сценария проверка передачи параметров "111"'                       |
		| 'Когда Простой шаг \'111\''                                                                                    |
		| 'И внутренний шаг "Значение2"'                                                                                 |
		| 'И вызов экспортного сценария для структуры сценария проверка передачи параметров "Значение2"'                 |
		| 'Когда Простой шаг "Значение2"'                                                                                |
		| 'И вызов экспортного сценария для структуры сценария проверка передачи параметров "333"'                       |
		| 'Когда Простой шаг \'333\''                                                                                    |