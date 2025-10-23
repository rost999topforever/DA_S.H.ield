# DA_S.H.ield Framework

**Ultra-minimal POSIX shell framework**

---

## 🇷🇺 Русская версия

### Что я сделал
Фреймворк для скриптинга на любом POSIX-совместимом shell. Работает везде, где есть `/bin/sh`.

### Функции и как работают

#### Базовые функции
- `Exo "текст"` - выводит текст без перевода строки
- `exo "текст"` - выводит текст с переводом строки
- `readp "подсказка" переменная` - ввод с подсказкой
- `qt` - выход из скрипта

#### Управление потоком
- `fif "условие" "действие_истина" "действие_ложь"` - условие if-else
- `wh "условие" "действие"` - цикл while
- `fored "переменная" количество "действие"` - цикл for

#### Файловые операции
- `fread файл` - чтение файла
- `print "текст" файл` - запись в конец файла
- `reprint "текст" файл` - перезапись файла
- `nostar` - список файлов в директории
- `star "расширение"` - файлы по расширению

#### Процессы и фон
- `spy "команда"` - выполнить в фоне
- `spy2 "cmd1" "&&" "cmd2"` - последовательность в фоне
- `spy3 "cmd1" "cmd2"` - пайплайн команд
- `spy4 "cmd1" "cmd2"` - пайплайн в фоне
- `job` - показать фоновые процессы

#### Утилиты
- `ifin значение` - проверяет, является ли значение числом
- `var переменная число1 операция число2` - математические операции
- `mass "эл1 эл2 эл3" номер` - доступ к элементу по индексу
- `gp "шаблон" файл` - поиск текста в файле
- `HClean` - очистка истории shell
- `traped` - защита от прерываний

#### Системные функции
- `func "имя" "код"` - создает именованную функцию
- `funk "код"` - выполняет анонимную функцию
- `sREPL` - запускает интерактивную оболочку
- `DA_SHield` - показывает информацию о фреймворке

---

## 🇺🇸 English Version

### What I Made
Framework for scripting on any POSIX-compatible shell. Works wherever `/bin/sh` exists.

### Functions and How They Work

#### Basic Functions
- `Exo "text"` - prints text without newline
- `exo "text"` - prints text with newline
- `readp "prompt" variable` - input with prompt
- `qt` - exit script

#### Flow Control
- `fif "condition" "true_action" "false_action"` - if-else condition
- `wh "condition" "action"` - while loop
- `fored "variable" count "action"` - for loop

#### File Operations
- `fread file` - read file
- `print "text" file` - append to file
- `reprint "text" file` - overwrite file
- `nostar` - list directory contents
- `star "extension"` - files by extension

#### Processes & Background
- `spy "command"` - run in background
- `spy2 "cmd1" "&&" "cmd2"` - sequence in background
- `spy3 "cmd1" "cmd2"` - command pipeline
- `spy4 "cmd1" "cmd2"` - pipeline in background
- `job` - show background jobs

#### Utilities
- `ifin value` - checks if value is a number
- `var variable number1 operation number2` - math operations
- `mass "item1 item2 item3" index` - access element by index
- `gp "pattern" file` - search text in file
- `HClean` - clear shell history
- `traped` - interrupt protection

#### System Functions
- `func "name" "code"` - creates named function
- `funk "code"` - executes anonymous function
- `sREPL` - starts interactive shell
- `DA_SHield` - shows framework info

---

**By Rost999** - For universal shell scripting
