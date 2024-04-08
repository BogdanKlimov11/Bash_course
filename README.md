<h1>Справочник командной оболочке PowerShell</h1>

---

<!-- Оглавление -->
<h2>Оглавление</h2>
<nav>
    <ol>
        <li><a href="#раздел-1">Работа с консолью Microsoft Windows</a></li>
        <li><a href="#раздел-2">Новый командный интерпретатор Windows PowerShell</a></li>
        <li><a href="#раздел-3">Что такое командлет?</a></li>
        <li><a href="#раздел-4">Основы программы PowerShell</a></li>
        <li><a href="#раздел-5">Конвейер PowerShell: особенности и параметры</a></li>
        <li><a href="#раздел-6">Интегрированная среда разработки</a></li>
        <li><a href="#раздел-7">PowerShell – актуальные версии программы</a></li>
    </ol>
</nav>

---

<!-- Разделы -->
<h2 id="раздел-1">Работа с консолью Microsoft Windows</h2>

---

<h2 id="раздел-2">Новый командный интерпретатор Windows PowerShell</h2>

В 2003 году корпорация Microsoft начала разработку нового инструмента — Microsoft Shell (MSH), или Monad. Спустя три года и три бета-версии 
Monad была официально выпущена под новым названием Windows PowerShell 1.0 на Windows XP и Windows Vista. По ходу развития командная оболочка 
меняла свои названия на PowerShell Core и PowerShell.

При создании PowerShell разработчики задались целью создать инструмент, который позволил бы с легкостью использовать множество разнородных 
интерфейсов, предоставляемых операционной системой. Новый инструмент должен быть консистентным и легким для администратора, несмотря на 
количество технологий «под капотом». Например, PowerShell предоставляет доступ к API .NET-фреймворка, но не требует от администратора знания 
.NET.

Как и любой командный интерпретатор, PowerShell умеет запускать исполняемые файлы и имеет встроенные команды. Однако у PowerShell встроенные 
команды имеют название «командлет», появившееся от английского cmdlet.

---

<h2 id="раздел-3">Что такое командлет?</h2>

В основе взаимодействия с PowerShell лежат объекты, а не текст, как у CMD.EXE и командных интерпретаторов в *nix-системах. Такой подход 
меняет взгляд на организацию встроенных команд.

Командлет — это встроенная команда в PowerShell, выполняющая одну задачу и реализованная на .NET. Имя командлета соответствует правилу 
Глагол-Существительное, которое можно читать как Действие-Объект.

Самый важный командлет, о котором необходимо узнать в первую очередь, — Get-Help. Он отображает справочную информацию о PowerShell и 
командлетах.

```powershell
# Получить общую справку по PowerShell
Get-Help

# Получить справку по командлету Get-Content
Get-Help Get-Content

# Получить справку по командлету Get-Help
Get-Help Get-Help
```

Если вам кажется, что использовать большие буквы в названии командлетов — это перебор, для вас есть хорошие новости. Все команды в 
PowerShell являются регистронезависимыми. Иными словами, перечисленные ниже написания эквивалентны:

```powershell
Get-Help Get-Help
get-help get-help
GET-HELP GET-HELP
GeT-hElP gEt-HeLp
```

Хотя Windows PowerShell нечувствительна к регистру в именах и параметрах, внешние программы, которые вызываются через оболочку, могут не 
обладать такими возможностями.

В первой версии PowerShell все командлеты были реализованы на .NET, но начиная с версии 2.0 появилась возможность писать командлеты с 
использованием синтаксиса PowerShell.

---

<h2 id="раздел-4">Основы программы PowerShell</h2>

Перейдем к практике. PowerShell является кроссплатформенным инструментом и может быть запущена на Linux и macOS, но в данной статье будет 
рассматриваться только «родное» окружение — Windows.

<h3>Как запустить?</h3>

<img src="https://github.com/BogdanKlimov11/Bash_course/assets/136115919/1a931d25-4fbd-4965-bbbc-dfa806b0e92b" width="50%" height="auto">

Запуск PowerShell можно произвести из меню поиска около кнопки **Пуск**, набрав powershell.

<img src="https://github.com/BogdanKlimov11/Bash_course/assets/136115919/b66759d7-be14-40b3-b3ce-0c3ea62ddd89" width="50%" height="auto">

Аналогично можно запустить PowerShell через диалоговое окно **Выполнить…**, которое открывается через сочетание клавиш Windows + R.

Если по каким-то причинам у вас не установлен PowerShell, то необходимо сделать это, следуя <a href="https://learn.microsoft.com/ru-ru/
powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2">инструкции</a> в базе знаний Microsoft.

<img src="https://github.com/BogdanKlimov11/Bash_course/assets/136115919/c5670504-6629-4ae8-866b-e78d5b6a6155" width="50%" height="auto">

В случае успеха откроется синее окно. Windows PowerShell готов к вашим командам.

<h3>Синтаксис</h3>

Синтаксис PowerShell похож на синтаксис других командных интерпретаторов. Сначала команда, а затем аргументы команды. Несколько команд в 
одной строке разделяются точкой с запятой. Рассмотрим на примере.

```powershell
Get-Help Get-Command -Online
```

Данная команда откроет в браузере вкладку с описанием командлета Get-Command в базе знаний Microsoft. Разберем подробнее:

* Get-Help – команда, в данном случае командлет,

* Get-Command – первый позиционный аргумент, который передается командлету,

* -Online – ключ, то есть именованный аргумент.

Обратите внимание, что в CMD.EXE именованные аргументы, то есть ключи, для встроенных команд начинались с символа слэш (/). У командлетов 
аргументы начинаются со знака минус. Использование знака / в PowerShell недопустимо и будет интерпретировано как ошибка.

Хотя PowerShell во многом похож на CMD.EXE, он имеет несколько существенных отличий. Во-первых, обращение к переменным производится через 
символ доллар, а не через знак процента. Во-вторых, PowerShell позволяет определять функции. Например:

---

<h2 id="раздел-5">Конвейер PowerShell: особенности и параметры</h2>

---

<h2 id="раздел-6">Интегрированная среда разработки</h2>

---

<h2 id="раздел-7">PowerShell – актуальные версии программы</h2>

---

<!-- Contacts -->
<h2>📡 Контакты автора:</h2>
<div id="badges" align="center">
    <a href="https://vk.com/bogdan_klimov">
        <img src="https://img.shields.io/badge/VK-blue?style=for-the-badge&logo=vk&logoColor=white&size=30" alt="VK Badge"/>
    </a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://t.me/bogdanklimov">
        <img src="https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white" alt="Telegram Badge"/>
    </a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://www.instagram.com/ghost_777_24?igsh=aHdwa2s1cTIzbmhw&utm_source=qr">
        <img src="https://img.shields.io/badge/Instagram-%23E4405F.svg?style=for-the-badge&logo=Instagram&logoColor=white" alt="Instagram Badge"/>
    </a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://www.facebook.com/profile.php?id=100033935590093&mibextid=LQQJ4d">
        <img src="https://img.shields.io/badge/Facebook-%231877F2.svg?style=for-the-badge&logo=Facebook&logoColor=white" alt="Facebook Badge"/>
    </a>
</div>
