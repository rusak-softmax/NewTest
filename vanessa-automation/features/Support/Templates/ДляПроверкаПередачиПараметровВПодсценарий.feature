# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA30_Прочие_макеты

@IgnoreOnCIMainBuild
@ExportScenarios
@tree


Функциональность: ДляПроверкаПередачиПараметровВПодсценарий

 
Сценарий: Для проверка передачи параметров в подсценарий "Параметр" Экспорт
	И шаг принимающий параметр "Параметр"


Сценарий: Для проверка передачи параметров в подсценарий

	И Для проверка передачи параметров "Значение", в подсценарий Экспорт