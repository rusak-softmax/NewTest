# language: ru
# encoding: utf-8
#parent ua:
@UA30_Прочие_макеты
#parent uf:
@UF9_Вспомогательные_фичи

@IgnoreOnCIMainBuild

Функциональность: ФичаДляПроверкиРаботыСПрофилямиПоиска
 

 
Сценарий: Для ФичаДляПроверкиРаботыСПрофилямиПоиска
	
	И я устанавливаю основной профиль цвета
			| 'Шрифт'      | 'arial' |
			| 'ЦветФона'   | 'white' |
			| 'ЦветШрифта' | 'black' |
			| 'Размер'     | '13'    |
		


	И я устанавливаю профиль цвета "Тест1"
			| 'Шрифт'      | 'arial' |
			| 'ЦветФона'   | 'white' |
			| 'ЦветШрифта' | 'black' |
			| 'Размер'     | '14'    |


	И я устанавливаю основной профиль цвета "Тест1"
	И я устанавливаю основной профиль цвета "CommandInterface"