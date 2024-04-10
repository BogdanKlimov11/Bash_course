# Поиск и вывод строк, содержащих определенное слово
Select-String -Path .\my_file.txt -Pattern "search_term"

# Замена всех вхождений одного слова на другое
(Get-Content -Path .\my_file.txt) -replace "old_word", "new_word" | Set-Content -Path .\my_file.txt

# Извлечение первых 10 строк из файла
Get-Content -Path .\my_file.txt -TotalCount 10

# Объединение содержимого двух файлов в один
Get-Content .\file1.txt, .\file2.txt | Set-Content .\merged_file.txt
