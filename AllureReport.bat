rem del "c:\Users\m.kislyak\Documents\Allure\" /q

xcopy /y "AllureHTML\history" "allurereport\history\*.*"

Allure\bin\allure generate -c allurereport -o AllureHTML
