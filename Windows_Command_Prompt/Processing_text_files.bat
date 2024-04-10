:: Поиск и вывод строк, содержащих определенное слово
findstr "search_term" my_file.txt

:: Замена всех вхождений одного слова на другое
powershell -Command "(Get-Content my_file.txt) | ForEach-Object { $_ -replace 'old_word', 'new_word' } | Set-Content my_file.txt"

:: Извлечение первых 10 строк из файла
more +10 my_file.txt

:: Объединение содержимого двух файлов в один
copy file1.txt + file2.txt merged_file.txt
