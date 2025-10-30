```markdown
# DA_S.H.ield Framework

**Universal POSIX Shell Framework**  
*Runs everywhere - zero dependencies, pure /bin/sh*

---

## 🇷🇺 Русская версия

### Что это
Универсальный фреймворк для POSIX-совместимых shell. **Главная фича: работает везде** где есть `/bin/sh`.

### 🎯 Ключевое преимущество
- **100% POSIX-совместимость** - работает на любом UNIX-подобной системе
- **Нет зависимостей** - только стандартный shell
- **Минималистичный** - один файл, легко переносить
- **Телефон/компьютер** - разрабатывай где угодно

### 🚀 Быстрый старт
```bash
# Запуск на ЛЮБОЙ системе с /bin/sh
./da_shield.sh

# Или в своих скриптах
source da_shield.sh
exo "Hello World"
```

🔧 Все функции фреймворка

🔄 REPL система

· sREPL - интерактивная оболочка
· smalPrompt - короткий промпт (имя директории)
· longPrompt - полный промпт (полный путь)

📊 Базовые операции

· Exo "текст" - вывод без перевода строки
· exo "текст" - вывод с переводом строки
· readp "подсказка" переменная - ввод с подсказкой
· evl "код" - выполнение кода
· qt - выход

🔁 Условия и циклы

· fif "условие" "then" "else" - условие if-else
· wh "условие" "действие" - цикл while
· fored "var" count "action" - цикл for
· counted N - последовательность чисел
· cased val "pat1" "act1" "pat2" "act2" ... - конструкция case

⚡ Параллельное выполнение

· spy "cmd" - выполнить в фоне
· spy2 "cmd1" "cmd2" - две команды в фоне
· spy3 "cmd1" "cmd2" - пайплайн команд
· spy4 "cmd1" "cmd2" - пайплайн в фоне
· job - показать фоновые процессы

📁 Работа с файлами

· COPY f1 f2 - копирование файлов
· COntinued f1 f2 - добавление содержимого
· fread file - чтение файла (аналог cat)
· print "text" file - запись в конец файла
· reprint "text" file - перезапись файла
· nostar - список всех файлов
· star расширение - файлы по расширению
· gp "шаблон" файл - поиск текста в файле

🔢 Переменные и данные

· var x 5 + 3 - математические операции
· jmp x 10 - установка переменной
· udel x - удаление переменной
· mass "a b c" 2 - доступ к элементу массива
· steps итерации var начальное множитель - степенные вычисления

🏗️ Система классов

· class "инициализация" "метод1" "тело1" "метод2" "тело2" - создание объекта с методами

Пример:

```bash
class "counter=0" \
  "inc" "counter=\$(( counter + 1 )); echo \$counter" \
  "dec" "counter=\$(( counter - 1 )); echo \$counter"

inc  # 1
inc  # 2
dec  # 1
```

🛡️ Системные утилиты

· HClean - очистка истории shell
· traped - защита от прерываний (INT/TERM)
· trapERR "cmd" - выполнение без ошибок
· func "name" "code" - создание функции
· RANDSTSRT - инициализация случайных чисел
· DA_SHield - информация о фреймворке

⏱️ Утилиты времени

· slp секунды - обычная задержка
· SMALLslp время - короткая задержка (десятые)
· BIGslp время - длинная задержка (десятки секунд)

🎨 Дополнительные функции

· Exoses "var" count "text" - многократный вывод
· constant var value - постоянная переменная (в фоне)
· or "cmd1" "cmd2" - выполнение ИЛИ
· md dir - создание директории
· PWD - текущая директория
· PID - ID процесса
· FI "шаблон" - поиск файлов

💡 Особенности

· Никаких табов - чистый код без лишних отступов
· Минимализм - только необходимые функции
· Переносимость - работает на старых и новых системах
· Простота - легко понять и модифицировать

---

🇺🇸 English Version

What is this

Universal framework for POSIX-compatible shells. Main feature: runs everywhere with /bin/sh.

🎯 Key Advantage

· 100% POSIX-compatible - works on any UNIX-like system
· Zero dependencies - only standard shell required
· Minimalistic - single file, easy to port
· Mobile/desktop - develop anywhere

🚀 Quick Start

```bash
# Run on ANY system with /bin/sh
./da_shield.sh

# Or in your scripts
source da_shield.sh
exo "Hello World"
```

🔧 All Framework Functions

🔄 REPL System

· sREPL - interactive shell
· smalPrompt - short prompt (directory name)
· longPrompt - full prompt (full path)

📊 Basic Operations

· Exo "text" - print without newline
· exo "text" - print with newline
· readp "prompt" variable - input with prompt
· evl "code" - execute code
· qt - exit

🔁 Conditions & Loops

· fif "condition" "then" "else" - if-else condition
· wh "condition" "action" - while loop
· fored "var" count "action" - for loop
· counted N - number sequence
· cased val "pat1" "act1" "pat2" "act2" ... - case construct

⚡ Parallel Execution

· spy "cmd" - run in background
· spy2 "cmd1" "cmd2" - two commands in background
· spy3 "cmd1" "cmd2" - command pipeline
· spy4 "cmd1" "cmd2" - pipeline in background
· job - show background jobs

📁 File Operations

· COPY f1 f2 - copy files
· COntinued f1 f2 - append content
· fread file - read file (cat analog)
· print "text" file - append to file
· reprint "text" file - overwrite file
· nostar - list all files
· star extension - files by extension
· gp "pattern" file - search text in file

🔢 Variables & Data

· var x 5 + 3 - math operations
· jmp x 10 - set variable
· udel x - unset variable
· mass "a b c" 2 - array element access
· steps iterations var initial multiplier - exponential calculations

🏗️ Class System

· class "initialization" "method1" "body1" "method2" "body2" - create object with methods

Example:

```bash
class "counter=0" \
  "inc" "counter=\$(( counter + 1 )); echo \$counter" \
  "dec" "counter=\$(( counter - 1 )); echo \$counter"

inc  # 1
inc  # 2
dec  # 1
```

🛡️ System Utilities

· HClean - clear shell history
· traped - interrupt protection (INT/TERM)
· trapERR "cmd" - execute without errors
· func "name" "code" - create function
· RANDSTSRT - random numbers initialization
· DA_SHield - framework info

⏱️ Time Utilities

· slp seconds - normal delay
· SMALLslp time - short delay (tenths)
· BIGslp time - long delay (tens of seconds)

🎨 Additional Functions

· Exoses "var" count "text" - multiple output
· constant var value - constant variable (in background)
· or "cmd1" "cmd2" - OR execution
· md dir - create directory
· PWD - current directory
· PID - process ID
· FI "pattern" - find files

💡 Features

· No tabs - clean code without indentation
· Minimalism - only essential functions
· Portability - works on old and new systems
· Simplicity - easy to understand and modify

---

🌟 Supported Systems

· Linux (any distribution)
· BSD (FreeBSD, OpenBSD, NetBSD)
· macOS
· Android (Termux)
· Embedded systems
· Old UNIX systems

No bash required - pure POSIX shell only
