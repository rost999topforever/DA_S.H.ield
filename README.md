Shell Script Functions Collection / Коллекция функций для Shell скриптаOverview / ОбзорЭтот скрипт содержит набор полезных функций для работы в оболочке, включая циклы, условные операторы, работу с файлами, процессами и историей команд.
This script contains a set of useful shell functions for loops, conditionals, file handling, processes, and command history management.Functions Description / Описание функцийRANDSTSRT
Русский: Устанавливает переменную RANDOM равной остатку от деления текущего времени на PID процесса оболочки.
English: Sets the RANDOM variable to the remainder of current timestamp divided by the current shell process ID ($$).Exo
Русский: Выводит аргумент без перевода строки.
English: Prints the passed string without a newline.exo
Русский: Выводит аргумент с переводом строки.
English: Prints the passed string with a newline.mass
Русский: Устанавливает позиционные параметры из первого аргумента и выводит значение переменной, имя которой передано вторым словом.
English: Takes a two-word string and prints the value of the variable named by the second word.HClean
Русский: Очищает историю команд оболочки.
English: Clears the shell command history.fored
Русский: Запускает команду $3 в цикле от 1 до $2 с именем переменной цикла $1.
English: Executes the command $3 in a loop named by $1 from 1 to $2.Exoses
Русский: Выводит строку $3, повторённую $2 раз без переноса строки.
English: Prints string $3 without newline, repeated $2 times.fif
Русский: Если $1 истинно, выполняет $2, иначе $3.
English: Conditional execution: if $1 is true, executes $2, else $3.wh
Русский: Запускает цикл while с условием $1 и телом $2.
English: Runs a while loop with condition $1 and body $2.traped
Русский: Блокирует сигналы INT, TERM и ERR.
English: Disables signals INT, TERM, and ERR.readp
Русский: Показывает приглашение $1 и считывает ввод в переменную $2.
English: Prints prompt $1 and reads input into variable $2.print
Русский: Добавляет строку $1 в конец файла $2.
English: Appends string $1 to the file $2.reprint
Русский: Перезаписывает файл $2 строкой $1.
English: Overwrites file $2 with string $1.DA_SHield
Русский: Выводит строку “DA_S.H.ield by Rost999”.
English: Prints the string “DA_S.H.ield by Rost999”.sREPL
Русский: Запускает REPL, обновляет RANDOM и выполняет введённые команды.
English: Starts a REPL loop updating RANDOM and evaluating entered commands.job
Русский: Выводит список текущих фоновых задач в фигурных скобках.
English: Shows the current running background jobs.spy
Русский: Запускает команду в фоне.
English: Runs a command in the background.spy2
Русский: Выполняет $1, затем $3 в фоне, если $1 успешно.
English: Executes $1 then $3 in background if $1 succeeds.spy3
Русский: Передаёт вывод $1 на вход $2.
English: Pipes output of $1 to $2.ifin
Русский: Возвращает 1, если $1 меньше или равно текущему PID, иначе 0.
English: Returns 1 if $1 ≤ current shell PID, else 0.spy4
Русский: Передаёт вывод $1 на вход $2, выполнение в фоне.
English: Pipes output of $1 to $2, runs in background.func
Русский: Создаёт функцию с именем $1 и телом $2.
English: Creates a function named $1 with body $2.funk
Русский: Создаёт функцию $1 без круглых скобок с телом $2.
English: Creates a function named $1 (without parentheses) with body $2.nostar
Русский: Выводит все файлы и каталоги в текущей папке.
English: Prints all files and directories in current folder.fread
Русский: Показывает содержимое файла $1.
English: Prints the content of file $1.gp
Русский: Поиск строки $1 в файле $2.
English: Greps for string $1 in file $2.star
Русский: Выводит все файлы с расширением $1.
English: Prints all files with extension $1.qt
Русский: Завершает выполнение скрипта.
English: Exits the script.var
Русский: Считает арифметическое выражение $2 $3 $4 и присваивает результат переменной $1.
English: Calculates expression $2 $3 $4 and assigns result to variable $1.Usage Example: Class Emulation / Пример: Эмуляция классаclass() {
  local varname="$1"
  local value="$2"
  local command="$3"

  # Устанавливаем переменную
  eval "$varname=$value"

  # Выполняем команду с использованием переменной
  eval "result=$(( $command ))"

  echo "Variable $varname = $value"
  echo "Evaluated result: $result"
}

# Пример вызова:
class x 1 "x + 1"License / ЛицензияЭтот проект открыт, можно использовать и изменять по своему усмотрению.
This project is open-source; feel free to use and modify it.
