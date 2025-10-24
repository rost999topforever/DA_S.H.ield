```markdown
# DA_S.H.ield Framework

**Ultra-minimal POSIX shell framework**

---

## 🇷🇺 Русская версия

### Что это
Фреймворк для написания скриптов на любом POSIX-совместимом shell. Работает везде, где есть `/bin/sh`.

### Функции

#### Базовые операции
- `Exo "текст"` - вывод без перевода строки
- `exo "текст"` - вывод с переводом строки  
- `readp "подсказка" переменная` - ввод с подсказкой
- `evl "код"` - выполнение кода (аналог eval)
- `qt` - выход из скрипта

#### Циклы и условия
- `fif "условие" "действие_истина" "действие_ложь"` - условие if-else
- `wh "условие" "действие"` - цикл while
- `fored "переменная" количество "действие"` - цикл for
- `counted число` - вывод последовательности чисел
- `cased значение "шаблон" "действие"` - конструкция case

#### Фоновые процессы
- `spy "команда"` - выполнить в фоне
- `spy2 "cmd1" "&&" "cmd2"` - последовательность в фоне
- `spy3 "cmd1" "cmd2"` - пайплайн команд
- `spy4 "cmd1" "cmd2"` - пайплайн в фоне
- `job` - показать фоновые процессы

#### Работа с файлами
- `frd файл` - чтение файла
- `print "текст" файл` - запись в конец файла
- `reprint "текст" файл` - перезапись файла
- `nostar` - список файлов в директории
- `star "расширение"` - файлы по расширению
- `gp "шаблон" файл` - поиск текста в файле

#### Переменные и данные
- `var переменная число1 операция число2` - математические операции
- `jmp переменная значение` - установка переменной
- `udel переменная` - удаление переменной
- `mass "эл1 эл2 эл3" номер` - доступ к элементу по индексу
- `steps итерации переменная начальное множитель` - степенные вычисления

#### Системные утилиты
- `HClean` - очистка истории shell
- `traped` - защита от прерываний
- `trapERR "код"` - выполнение с подавлением ошибок
- `func "имя" "код"` - создание именованной функции
- `DA_SHield` - информация о фреймворке
- `sREPL` - интерактивная оболочка

---

## 🇺🇸 English Version

### What is this
Framework for scripting on any POSIX-compatible shell. Works wherever `/bin/sh` exists.

### Functions

#### Basic Operations
- `Exo "text"` - print without newline
- `exo "text"` - print with newline
- `readp "prompt" variable` - input with prompt
- `evl "code"` - execute code (eval alias)
- `qt` - exit script

#### Loops & Conditions
- `fif "condition" "true_action" "false_action"` - if-else condition
- `wh "condition" "action"` - while loop
- `fored "variable" count "action"` - for loop
- `counted number` - output number sequence
- `cased value "pattern" "action"` - case construct

#### Background Processes
- `spy "command"` - run in background
- `spy2 "cmd1" "&&" "cmd2"` - sequence in background
- `spy3 "cmd1" "cmd2"` - command pipeline
- `spy4 "cmd1" "cmd2"` - pipeline in background
- `job` - show background jobs

#### File Operations
- `frd file` - read file
- `print "text" file` - append to file
- `reprint "text" file` - overwrite file
- `nostar` - list directory contents
- `star "extension"` - files by extension
- `gp "pattern" file` - search text in file

#### Variables & Data
- `var variable number1 operation number2` - math operations
- `jmp variable value` - set variable
- `udel variable` - unset variable
- `mass "item1 item2 item3" index` - access element by index
- `steps iterations variable initial multiplier` - exponential calculations

#### System Utilities
- `HClean` - clear shell history
- `traped` - interrupt protection
- `trapERR "code"` - execute with error suppression
- `func "name" "code"` - create named function
- `DA_SHield` - framework info
- `sREPL` - interactive shell
