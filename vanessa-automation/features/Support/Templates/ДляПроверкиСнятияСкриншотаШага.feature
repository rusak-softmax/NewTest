# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA42_Тестовые_фичи

@tree
@IgnoreOnCIMainBuild




Функциональность: Тестовая фича, проверяющая снятие скриншота у тегированного шага
 

Сценарий: Тестовая фича, проверяющая снятие скриншота у тегированного шага
	Когда я выполняю простой шаг
	@screenshot
	И я выполняю ещё простой шаг		
	
	