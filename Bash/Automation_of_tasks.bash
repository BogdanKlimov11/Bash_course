# Создание скрипта и его выполнение
echo "Hello, world!" > script.sh
chmod +x script.sh
./script.sh

# Запуск скрипта по расписанию
crontab -e
# Добавление строки в файл crontab:
# * * * * * /path/to/script.sh   # Запустить скрипт каждую минуту
