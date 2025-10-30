```markdown
# DA_S.H.ield Framework

**Ultimate POSIX Shell Framework**  
*Runs everywhere - zero dependencies, pure /bin/sh*

---

## 🇷🇺 Русская версия

### Что это
Универсальный фреймворк для POSIX shell. **Работает везде, где есть `/bin/sh`**. Полная переносимость и минимализм.

### 🚀 Быстрый старт
```bash
# Запуск на любой системе
./da_shield.sh

# Или подключи в свой скрипт
source da_shield.sh
exo "Hello World"
```

🎯 Ключевые особенности

· 100% POSIX-совместимость - Linux, BSD, macOS, Android, embedded systems
· Ноль зависимостей - только стандартный shell
· Интерактивный REPL - мощная оболочка с кастомным промптом
· Объектно-ориентированный - система классов для сложных структур

🔧 Все функции

🔄 Интерактивная оболочка

· sREPL - запуск интерактивной среды
· smalPrompt - короткий промпт (только имя папки)
· longPrompt - полный промпт (полный путь)
· DAshieldprompt - переменная текущего промпта

📊 Базовые операции

· Exo "текст" - вывод без перевода строки
· exo "текст" - вывод с переводом строки
· readp "подсказка" переменная - ввод с подсказкой
· evl "код" - выполнение кода
· qt - выход

🔢 Математика и данные

· counted N - последовательность чисел (1 2 3 ... N)
· var x значение - установка переменной
· pmc x 5 + 3 - математические операции
· steps итерации var начальное множитель - степенные вычисления
· jmp x 10 - присвоение значения
· udel x - удаление переменной

🏗️ Объектно-ориентированная система

· class "инициализация" "метод1" "тело1" "метод2" "тело2" - создание объектов

Пример:

```bash
class "counter=0" \
  "increment" "counter=\$(( counter + 1 )); echo \$counter" \
  "decrement" "counter=\$(( counter - 1 )); echo \$counter"

increment  # 1
increment  # 2
decrement  # 1
```

🔁 Условия и циклы

· fif "условие" "then" "else" - условие if-else
· wh "условие" "действие" - цикл while
· fored "var" count "action" - цикл for
· cased значение "паттерн1" "действие1" ... - конструкция case

⚡ Параллельное выполнение

· spy "cmd" - выполнить в фоне
· spy2 "cmd1" "&&" "cmd2" - последовательность в фоне
· spy3 "cmd1" "cmd2" - пайплайн команд
· spy4 "cmd1" "cmd2" - пайплайн в фоне
· job - список фоновых задач
· constant var value - постоянная переменная (в фоне)

📁 Работа с файлами

· COPY файл1 файл2 - копирование файлов
· COntinued файл1 файл2 - добавление содержимого
· frd файл - чтение файла
· print "текст" файл - запись в конец
· reprint "текст" файл - перезапись файла
· nostar - список всех файлов
· star расширение - файлы по расширению
· md папка - создание директории

🛡️ Системные утилиты

· HClean - очистка истории shell
· traped - защита от сигналов (INT/TERM)
· trapERR "cmd" - выполнение без ошибок
· func "имя" "тело" - создание функции
· shBANG файл - добавление shebang в скрипт

🎲 Случайные числа

· RANDSTART - инициализация генератора
· RANDOMname переменная - случайное число в переменную

⏱️ Управление временем

· slp секунды - обычная задержка
· SMALLslp время - короткая задержка (десятые)
· BIGslp время - длинная задержка (десятки секунд)

🔍 Поиск и утилиты

· gp "шаблон" файл - поиск текста (grep)
· FI "шаблон" - поиск файлов (find)
· PWD - текущая директория
· PID - ID процесса
· or "cmd1" "cmd2" - выполнение ИЛИ

🎨 Работа с массивами

· mass "элементы" - установка массива
· massexo "элементы" индекс - доступ к элементу массива

💡 Философия

· Никаких табов - чистый код
· Пользователь отвечает за безопасность - нет лишних проверок
· Максимальная мощность - все возможности shell доступны

---

🇺🇸 English Version

What is this

Universal POSIX shell framework. Works everywhere with /bin/sh. Full portability and minimalism.

🚀 Quick Start

```bash
# Run on any system
./da_shield.sh

# Or source in your script
source da_shield.sh
exo "Hello World"
```

🎯 Key Features

· 100% POSIX-compatible - Linux, BSD, macOS, Android, embedded systems
· Zero dependencies - only standard shell required
· Interactive REPL - powerful shell with custom prompt
· Object-oriented - class system for complex structures

🔧 All Functions

🔄 Interactive Shell

· sREPL - start interactive environment
· smalPrompt - short prompt (folder name only)
· longPrompt - full prompt (full path)
· DAshieldprompt - current prompt variable

📊 Basic Operations

· Exo "text" - print without newline
· exo "text" - print with newline
· readp "prompt" variable - input with prompt
· evl "code" - execute code
· qt - exit

🔢 Math & Data

· counted N - number sequence (1 2 3 ... N)
· var x value - set variable
· pmc x 5 + 3 - math operations
· steps iterations var initial multiplier - exponential calculations
· jmp x 10 - assign value
· udel x - unset variable

🏗️ Object-Oriented System

· class "initialization" "method1" "body1" "method2" "body2" - create objects

Example:

```bash
class "counter=0" \
  "increment" "counter=\$(( counter + 1 )); echo \$counter" \
  "decrement" "counter=\$(( counter - 1 )); echo \$counter"

increment  # 1
increment  # 2
decrement  # 1
```

🔁 Conditions & Loops

· fif "condition" "then" "else" - if-else condition
· wh "condition" "action" - while loop
· fored "var" count "action" - for loop
· cased value "pattern1" "action1" ... - case construct

⚡ Parallel Execution

· spy "cmd" - run in background
· spy2 "cmd1" "&&" "cmd2" - sequence in background
· spy3 "cmd1" "cmd2" - command pipeline
· spy4 "cmd1" "cmd2" - pipeline in background
· job - list background jobs
· constant var value - constant variable (in background)

📁 File Operations

· COPY file1 file2 - copy files
· COntinued file1 file2 - append content
· frd file - read file
· print "text" file - append to file
· reprint "text" file - overwrite file
· nostar - list all files
· star extension - files by extension
· md dir - create directory

🛡️ System Utilities

· HClean - clear shell history
· traped - signal protection (INT/TERM)
· trapERR "cmd" - execute without errors
· func "name" "body" - create function
· shBANG file - add shebang to script

🎲 Random Numbers

· RANDSTART - initialize generator
· RANDOMname variable - random number to variable

⏱️ Time Management

· slp seconds - normal delay
· SMALLslp time - short delay (tenths)
· BIGslp time - long delay (tens of seconds)

🔍 Search & Utilities

· gp "pattern" file - text search (grep)
· FI "pattern" - file search (find)
· PWD - current directory
· PID - process ID
· or "cmd1" "cmd2" - OR execution

🎨 Array Operations

· mass "elements" - set array
· massexo "elements" index - access array element

💡 Philosophy

· No tabs - clean code
· User responsible for safety - no hand-holding
· Maximum power - all shell features available

---

🌟 Supported Systems

· Linux (any distro)
· BSD (FreeBSD, OpenBSD, NetBSD)
· macOS
· Android (Termux)
· Embedded systems
· Old UNIX systems

No bash required - pure POSIX shell only

---

Developed on mobile with ❤️ by Rost999
DA_S.H.ield GPL 3.0

```
