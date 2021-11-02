#Использовать v8runner
#Использовать cmdline

Перем СЕРВЕР;
Перем СЕРВЕР_ПОРТ;
Перем БАЗА;
Перем ЭТО_ФАЙЛОВАЯ_БАЗА;
Перем ПОЛЬЗОВАТЕЛЬ;
Перем ПАРОЛЬ;
Перем ПЛАТФОРМА_ВЕРСИЯ;
Перем РАБОЧИЙ_КАТАЛОГ;

Перем Конфигуратор;
Перем Лог;

Функция Инициализация()

    Парсер = Новый ПарсерАргументовКоманднойСтроки();
    Парсер.ДобавитьИменованныйПараметр("-platform");
    Парсер.ДобавитьИменованныйПараметр("-server");
    Парсер.ДобавитьИменованныйПараметр("-base");
    Парсер.ДобавитьИменованныйПараметр("-user");
    Парсер.ДобавитьИменованныйПараметр("-passw");

    Параметры = Парсер.Разобрать(АргументыКоманднойСтроки);
    
    ПЛАТФОРМА_ВЕРСИЯ  = Параметры["-platform"];//"8.3.10.2639"; // если пустая строка, то будет взята последняя версия
    СЕРВЕР            =  Параметры["-server"];
    СЕРВЕР_ПОРТ       = 1541; // 1541 - по умолчанию
    БАЗА              =  Параметры["-base"];
    ЭТО_ФАЙЛОВАЯ_БАЗА = Ложь;
    ПОЛЬЗОВАТЕЛЬ      = Параметры["-user"];
    ПАРОЛЬ            = Параметры["-passw"];

    Конфигуратор = Новый УправлениеКонфигуратором();
    Конфигуратор.УстановитьКонтекст(СтрокаСоединенияИБ(), ПОЛЬЗОВАТЕЛЬ, ПАРОЛЬ);
    Конфигуратор.ИспользоватьВерсиюПлатформы(ПЛАТФОРМА_ВЕРСИЯ);

    Лог = Логирование.ПолучитьЛог("disableCfgSupport");

КонецФункции

Функция СнятьКонфигурациюСПоддержки()

    Конфигуратор.СнятьКонфигурациюСПоддержки(Истина);

КонецФункции

Функция ОбновитьКонфигурациюБазыДанных()

    Конфигуратор.ОбновитьКонфигурациюБазыДанных();

КонецФункции

Функция СтрокаСоединенияИБ() 
    Если ЭТО_ФАЙЛОВАЯ_БАЗА Тогда
        Возврат "/F" + БАЗА; 
    Иначе   
        Возврат "/IBConnectionString""Srvr=" + СЕРВЕР + ?(ЗначениеЗаполнено(СЕРВЕР_ПОРТ),":" + СЕРВЕР_ПОРТ,"") + ";Ref='"+ БАЗА + "'""";
    КонецЕсли;
КонецФункции

Инициализация();
Лог.Информация("Disabling cfg support...");
СнятьКонфигурациюСПоддержки();
Лог.Информация("Sucessfuly disabled cfg support");