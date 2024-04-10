:: Создание скрипта и его выполнение
echo @echo off > script.bat
echo echo Hello, world! >> script.bat
script.bat

:: Запуск скрипта по расписанию
schtasks /create /tn "My Task" /tr "C:\path\to\script.bat" /sc minute /mo 1
