# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA30_Прочие_макеты

@IgnoreOnCIMainBuild
@Тест

Функциональность: ФичаДляВыводИнформацииВЛог
 

Сценарий: Для ФичаДляВыводИнформацииВЛог
	И Я запоминаю значение выражения '"Текст1"' в переменную "ИмяПеременной"
	И я добавляю информацию в лог "$ИмяПеременной$+1"
	И я добавляю информацию в лог "Текст2"
	И я добавляю информацию в лог '$ИмяПеременной$ + "Текст3"'
	