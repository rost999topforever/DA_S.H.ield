DA_S.H.ield Framework

Ultra-minimal POSIX shell framework for survival scripting

---

🇷🇺 Русская версия

Что это?

Фреймворк для написания скриптов на любом POSIX-совместимом shell (Bash, Dash, Ash, BusyBox). Работает везде, где есть /bin/sh.

Функции

🔤 Вывод текста

· Exo "текст" - вывод без перевода строки
· exo "текст" - вывод с переводом строки
· Exoses "i" 5 "текст" - повторение вывода

🔄 Управление потоком

· fif "условие" "действие_истина" "действие_ложь" - условное выполнение
· wh "условие" "действие" - цикл while
· fored "var" 10 "действие" - цикл for (1 до 10)

🎭 Мультипроцессинг

· spy "команда" - выполнить в фоне
· spy2 "cmd1" "&&" "cmd2" - последовательность в фоне
· spy3 "cmd1" "cmd2" - пайплайн |
· spy4 "cmd1" "cmd2" - пайплайн в фоне
· job - показать фоновые задачи

🧮 Данные и вычисления

· var x 5 + 3 - математика: x = 5 + 3
· mass "a b c" 2 - доступ к элементам: выведет "b"

🎬 Анимации

· anim "🐔 🥚 🐣" 0.5 - анимация с кадрами
· animed "◐ ◓ ◑ ◒" 0.2 - бесконечная анимация

📁 Файлы и ввод

· readp "Ввод: " var - ввод с подсказкой
· fread file.txt - чтение файла
· print "текст" file - дописать в файл
· reprint "текст" file - перезаписать файл

🔧 Системные утилиты

· nostar - список файлов (аналог ls)
· star "txt" - файлы по расширению (*.txt)
· gp "шаблон" файл - поиск текста (grep)
· qt - выход из скрипта
· HClean - очистка истории
· traped - защита от прерываний

🛠 Метапрограммирование

· func "name" "код" - создать именованную функцию
· funk "код" - выполнить анонимную функцию
· sREPL - интерактивная оболочка

Философия

· 0 зависимостей - работает на голом POSIX shell
· Ультра-портативный - от сервера до роутера
· Практичный фокус - только то, что реально нужно

---

🇺🇸 English Version

What is this?

Framework for scripting on ANY POSIX-compatible shell (Bash, Dash, Ash, BusyBox). Works wherever /bin/sh exists.

Functions

🔤 Text Output

· Exo "text" - print without newline
· exo "text" - print with newline
· Exoses "i" 5 "text" - repeat output

🔄 Flow Control

· fif "condition" "true_action" "false_action" - if-else
· wh "condition" "action" - while loop
· fored "var" 10 "action" - for loop (1 to 10)

🎭 Multiprocessing

· spy "command" - run in background
· spy2 "cmd1" "&&" "cmd2" - sequence in background
· spy3 "cmd1" "cmd2" - pipeline |
· spy4 "cmd1" "cmd2" - pipeline in background
· job - show background jobs

🧮 Data & Math

· var x 5 + 3 - math: x = 5 + 3
· mass "a b c" 2 - access elements: returns "b"

🎬 Animations

· anim "🐔 🥚 🐣" 0.5 - animation with frames
· animed "◐ ◓ ◑ ◒" 0.2 - infinite animation

📁 Files & Input

· readp "Prompt: " var - input with prompt
· fread file.txt - read file
· print "text" file - append to file
· reprint "text" file - overwrite file

🔧 System Utilities

· nostar - list files (ls alternative)
· star "txt" - files by extension (*.txt)
· gp "pattern" file - text search (grep)
· qt - exit script
· HClean - clear history
· traped - interrupt protection

🛠 Metaprogramming

· func "name" "code" - create named function
· funk "code" - execute anonymous function
· sREPL - interactive shell

Philosophy

· 0 dependencies - works on bare POSIX shell
· Ultra-portable - from servers to routers
· Practical focus - only what you actually need

---

By Rost999 - For those who code anywhere, on anything 💻📱🔧
