
&НаСервереБезКонтекста
Функция УзнатьНадоМаксимизировать()
	
	Значение = Константы.СлужебныйСчетчик.Получить();
	Если Значение < 2 Тогда
		Возврат Истина;
	КонецЕсли;	 
	
	Возврат Ложь;
КонецФункции	

&НаСервереБезКонтекста
Процедура УвелитьКонстанту()
	Значение = Константы.СлужебныйСчетчик.Получить();
	Константы.СлужебныйСчетчик.Установить(Значение+1);
КонецПроцедуры

&НаКлиенте
Процедура МаксимизироватьОкно()
	НадоМаксимизировать = УзнатьНадоМаксимизировать();
	
	//НадоМаксимизировать = Истина;
	
	Если НадоМаксимизировать Тогда
		Попытка
			WSHShell = Новый COMОбъект("WScript.Shell");
		Исключение
			ВызватьИсключение "Не удалось подключенить COM объект <WScript.Shell>";
		КонецПопытки;  
		WSHShell.SendKeys("%");
		WSHShell.SendKeys("{LEFT}{LEFT}{ENTER}");    
		
		УвелитьКонстанту();
	КонецЕсли;	 
	
	ЭтаФорма.Закрыть();
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	
	СисИнфо = Новый СистемнаяИнформация;
	Если Найти(Строка(СисИнфо.ТипПлатформы), "Linux")>0 Тогда 
		Отказ = Истина;
		Возврат;
	КонецЕсли;
	
	
	ПодключитьОбработчикОжидания("МаксимизироватьОкно",0.1,Истина);
КонецПроцедуры
