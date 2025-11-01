# DA_S.H.ield 🛡️

**Ultimate POSIX Shell Framework**  
*Runs everywhere - zero dependencies, pure /bin/sh*

---

## 🇷🇺 Русская версия

### Что это
Универсальный фреймворк для POSIX shell. **Работает везде, где есть `/bin/sh`** - от Linux до embedded систем. Полная переносимость и минимализм.

### 🚀 Быстрый старт
```bash
# Запуск интерактивной оболочки
./DA_S.H.ield.sh

# Или подключи в свой скрипт
. ./DA_S.H.ield.sh
exo "Hello World"
🎯 Ключевые особенности
✅ 100% POSIX-совместимость - работает на любой Unix-системе
✅ Нулевые зависимости - не требует внешних утилит (seq, bc и т.д.)
✅ Embedded-ready - работает даже на микроволновке с BusyBox
✅ ООП поддержка - система классов для сложных структур
✅ Интерактивный REPL - мощная оболочка с кастомным промптом
✅ Цветной вывод - ANSI escape codes для красивого текста
📚 Документация функций
🔄 Интерактивная оболочка
sREPL [varname]
Запуск интерактивной среды с автообновлением промпта.
sREPL           # Использует переменную RANDOM
sREPL "MYRAND"  # Использует переменную MYRAND для случайных чисел
smalPrompt
Короткий промпт (только имя папки): &+[Documents]::
longPrompt
Полный промпт (полный путь): &+[/home/user/Documents]::
📊 Базовые операции
Exo "text"
Вывод текста без перевода строки.
Exo "Loading"
Exo "."
Exo "."
exo "text"
Вывод текста с переводом строки.
exo "Hello World"
readp "prompt" variable
Ввод с подсказкой.
readp "Enter name: " name
exo "Hello, $name"
evl "code"
Выполнение кода.
evl "x=10; echo \$x"
qt
Выход из скрипта.
🔢 Математика и переменные
var variable value
Установка переменной.
var x 100
var name "John"
pmc variable num1 op num2
Математические операции.
pmc result 10 + 5   # result = 15
pmc result 20 - 3   # result = 17
pmc result 4 \* 5   # result = 20
jmp variable value
Быстрое присваивание (алиас для var).
jmp counter 0
udel variable
Удаление переменной.
udel temp
🔁 Циклы
counted start end
Последовательность чисел от start до end.
counted 1 10  # Выведет: 1 2 3 4 5 6 7 8 9 10
fored start end "action"
Цикл for от start до end.
fored 1 5 "exo 'Iteration'"
Exoses start end "text"
Вывод текста N раз.
Exoses 1 3 "Hello"  # Выведет "Hello" 3 раза
wh "condition" "action"
Цикл while.
var i 0
wh "[ \$i -lt 5 ]" "exo \$i; var i \$(( i + 1 ))"
steps start end variable multiplier
Возведение в степень через умножение.
var x 2
steps 1 3 x 2  # x = 2 * 2 * 2 = 8
🏗️ Объектно-ориентированная система
class "init" "method1" "body1" "method2" "body2" ...
Создание объектов с методами.
class "counter=0" \
  "inc" "counter=\$(( counter + 1 )); exo \$counter" \
  "dec" "counter=\$(( counter - 1 )); exo \$counter" \
  "reset" "counter=0"

inc     # 1
inc     # 2
reset
inc     # 1
🔀 Условия и логика
fif "condition" "then" "else"
Условие if-else.
fif "[ 5 -gt 3 ]" "exo 'Yes'" "exo 'No'"
cased value "pattern1" "action1" "pattern2" "action2" ... "default"
Конструкция case (до 4 паттернов + default).
cased "$input" \
  "yes" "exo 'Confirmed'" \
  "no" "exo 'Cancelled'" \
  "exo 'Unknown'"
and "cmd1" "cmd2"
Логическое И (cmd2 выполнится только если cmd1 успешен).
and "[ -f test.txt ]" "exo 'File exists'"
or "cmd1" "cmd2"
Логическое ИЛИ.
or "[ -f file1 ]" "[ -f file2 ]"
📏 Операторы сравнения
ge num1 num2
Больше или равно (>=).
ge 5 3 && exo "5 >= 3"
gt num1 num2
Больше (>).
le num1 num2
Меньше или равно (<=).
lt num1 num2
Меньше (<).
equal val1 val2
Равно (=).
equal "$name" "John" && exo "Hello John"
⚡ Параллельное выполнение
spy "command"
Выполнить команду в фоне.
spy "sleep 5; exo 'Done'"
spy2 "cmd1" "&&" "cmd2"
Последовательность команд в фоне.
spy2 "mkdir test" "&&" "cd test"
spy3 "cmd1" "cmd2"
Пайплайн команд.
spy3 "echo test" "grep t"
spy4 "cmd1" "cmd2"
Пайплайн команд в фоне.
constant variable value
Постоянно обновляемая переменная (в фоне).
constant timestamp "\$(date +%s)"
🔗 Управление потоком
PIPE "cmd1" "cmd2" "cmd3" ...
Последовательное выполнение команд. Останавливается при первой ошибке.
PIPE "mkdir /tmp/test" "cd /tmp/test" "touch file.txt"
📁 Работа с файлами
COPY source dest
Копирование файлов.
COPY file1.txt file2.txt
COntinued source dest
Добавление содержимого одного файла в другой.
COntinued log1.txt log2.txt
frd file
Чтение файла (вывод содержимого).
frd config.txt
print "text" file
Добавление текста в конец файла.
print "New line" log.txt
reprint "text" file
Перезапись файла.
reprint "First line" file.txt
nostar
Список всех файлов в директории.
nostar  # Выведет: file1 file2 dir1 ...
star extension
Файлы с определённым расширением.
star txt  # Выведет: file1.txt file2.txt ...
md directory
Создание директории.
md /tmp/mydir
🔍 Поиск
gp "pattern" file
Поиск текста в файле (grep).
gp "error" app.log
FI "pattern"
Поиск файлов по имени (find).
FI "*.txt"
🎨 Цветной вывод
Cexo color "text"
Цветной вывод с переводом строки.
Cexo 31 "Error!"    # Красный
Cexo 32 "Success!"  # Зелёный
Cexo 33 "Warning!"  # Жёлтый
Коды цветов:
31 - красный
32 - зелёный
33 - жёлтый
34 - синий
35 - фиолетовый
36 - голубой
Cprint color "text"
Цветной вывод без перевода строки.
Creadp color "prompt" variable
Цветной промпт для ввода.
Creadp 36 "Enter name: " name
🎲 Случайные числа
RANDSTART
Инициализация генератора случайных чисел (переменная RANDOM).
RANDSTART
exo $RANDOM
RANDOMname variable
Генерация случайного числа в переменную.
RANDOMname dice
exo "You rolled: $dice"
⏱️ Управление временем
slp seconds
Обычная задержка.
slp 2  # 2 секунды
SMALLslp value
Короткая задержка (value/10 секунд).
SMALLslp 5  # 0.5 секунды
BIGslp value
Длинная задержка (value*10 секунд).
BIGslp 2  # 20 секунд
🛡️ Системные утилиты
traped
Защита от сигналов прерывания (INT, TERM).
traped
# Теперь Ctrl+C не прервёт скрипт
trapERR "command"
Выполнение команды без вывода ошибок.
trapERR "[ 5 -eq 10 ]"  # Не выведет ошибку
func "name" "body"
Создание функции.
func "greet" "exo 'Hello, World!'"
greet
shBANG file
Добавление shebang (#!/bin/sh) в начало файла.
shBANG myscript.sh
RUN script
Запуск shell-скрипта.
RUN test.sh
Go directory
Переход в директорию.
Go /tmp
exoPWD
Вывод текущей директории.
exoPID
Вывод PID текущего процесса.
🎨 Работа с массивами
mass "elements"
Установка позиционных параметров.
mass "apple banana cherry"
massexo "elements" index
Доступ к элементу массива по индексу.
massexo "red green blue" 2  # Выведет: green
🇺🇸 English Version
What is this
Universal POSIX shell framework. Works everywhere with /bin/sh - from Linux to embedded systems. Full portability and minimalism.
🚀 Quick Start
# Start interactive shell
./DA_S.H.ield.sh

# Or source in your script
. ./DA_S.H.ield.sh
exo "Hello World"
🎯 Key Features
✅ 100% POSIX-compatible - works on any Unix system
✅ Zero dependencies - no external utilities required (seq, bc, etc.)
✅ Embedded-ready - runs even on a microwave with BusyBox
✅ OOP support - class system for complex structures
✅ Interactive REPL - powerful shell with custom prompt
✅ Colored output - ANSI escape codes for beautiful text
📚 Function Documentation
🔄 Interactive Shell
sREPL [varname]
Start interactive environment with auto-updating prompt.
smalPrompt
Short prompt (folder name only): &+[Documents]::
longPrompt
Full prompt (full path): &+[/home/user/Documents]::
📊 Basic Operations
Exo "text" / exo "text"
Print text without/with newline.
readp "prompt" variable
Input with prompt.
evl "code"
Execute code.
qt
Exit script.
🔢 Math & Variables
var variable value
Set variable.
pmc variable num1 op num2
Math operations.
jmp variable value
Quick assignment.
udel variable
Unset variable.
🔁 Loops
counted start end
Number sequence from start to end.
fored start end "action"
For loop from start to end.
Exoses start end "text"
Print text N times.
wh "condition" "action"
While loop.
steps start end variable multiplier
Exponentiation via multiplication.
🏗️ Object-Oriented System
class "init" "method1" "body1" ...
Create objects with methods.
🔀 Conditions & Logic
fif "condition" "then" "else"
If-else condition.
cased value "pattern1" "action1" ...
Case construct (up to 4 patterns + default).
and "cmd1" "cmd2" / or "cmd1" "cmd2"
Logical AND / OR.
📏 Comparison Operators
ge / gt / le / lt / equal
Greater-or-equal / Greater / Less-or-equal / Less / Equal.
⚡ Parallel Execution
spy "command"
Run command in background.
spy2 "cmd1" "&&" "cmd2"
Command sequence in background.
spy3 "cmd1" "cmd2"
Command pipeline.
spy4 "cmd1" "cmd2"
Pipeline in background.
constant variable value
Constantly updated variable (in background).
🔗 Flow Control
PIPE "cmd1" "cmd2" ...
Sequential execution. Stops at first error.
📁 File Operations
COPY / COntinued / frd / print / reprint
Copy / Append / Read / Append-to / Overwrite files.
nostar / star extension
List all files / Files by extension.
md directory
Create directory.
🔍 Search
gp "pattern" file
Text search (grep).
FI "pattern"
File search (find).
🎨 Colored Output
Cexo color "text"
Colored output with newline.
Color codes: 31-red, 32-green, 33-yellow, 34-blue, 35-purple, 36-cyan
Cprint color "text"
Colored output without newline.
Creadp color "prompt" variable
Colored input prompt.
🎲 Random Numbers
RANDSTART
Initialize random generator (RANDOM variable).
RANDOMname variable
Generate random number into variable.
⏱️ Time Management
slp / SMALLslp / BIGslp
Normal / Short / Long delays.
🛡️ System Utilities
traped
Signal protection (INT, TERM).
trapERR "command"
Execute command without error output.
func "name" "body"
Create function.
shBANG file
Add shebang to file.
RUN script
Execute shell script.
Go directory
Change directory.
exoPWD / exoPID
Print current directory / process ID.
🎨 Array Operations
mass "elements"
Set positional parameters.
massexo "elements" index
Access array element by index.
💡 Philosophy
No hand-holding - user responsible for safety
Maximum power - all shell features available
Pure POSIX - works everywhere
Minimalism - clean, efficient code
🌟 Supported Systems
✅ Linux (all distros)
✅ BSD (FreeBSD, OpenBSD, NetBSD)
✅ macOS
✅ Android (Termux)
✅ Embedded systems
✅ Old UNIX systems
✅ Even microwaves with BusyBox! 🔥
No bash required - pure POSIX shell only
Developed with ❤️ by Rost999
DA_S.H.ield GPL 3.0
