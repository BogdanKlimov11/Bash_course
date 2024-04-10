# Создание папки
New-Item -ItemType Directory -Path .\my_folder

# Создание файла
New-Item -ItemType File -Path .\my_file.txt

# Копирование файла
Copy-Item -Path .\my_file.txt -Destination .\new_file.txt

# Перемещение файла
Move-Item -Path .\my_file.txt -Destination .\path\to\new_location\

# Удаление файла
Remove-Item -Path .\my_file.txt

# Удаление папки (со всем ее содержимым)
Remove-Item -Path .\my_folder -Recurse
