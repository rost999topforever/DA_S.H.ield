# DA_S.H.ield

**POSIX shell framework with 83 functions**

Фреймворк для POSIX shell с 83 функциями

---

## 🛡️ About / О проекте

**EN:** DA_S.H.ield is a lightweight framework that extends POSIX shell capabilities. It adds arrays, random numbers, object-oriented syntax, and interactive REPL - all in pure `/bin/sh` without dependencies.

**RU:** DA_S.H.ield - легковесный фреймворк расширяющий возможности POSIX shell. Добавляет массивы, случайные числа, ООП-синтаксис и интерактивный REPL - всё на чистом `/bin/sh` без зависимостей.

---

## ✨ Key Features / Ключевые возможности

**EN:**
- 🎯 **Arrays** - via `set --` for POSIX compatibility
- 🎲 **Random numbers** - without `$RANDOM` (works in dash/sh)
- 📝 **Multi-line input** - `reader()` function for interactive coding
- 🎨 **ASCII drawing** - `paint()` for terminal art
- 🔒 **Constants** - protected variables via background loops
- 🔐 **Password protection** - `anonim()` for script security
- 🎭 **OOP syntax** - class-like structures
- 🚀 **Background execution** - spy-family functions
- 🌈 **Colored output** - ANSI escape codes support

**RU:**
- 🎯 **Массивы** - через `set --` для POSIX совместимости
- 🎲 **Случайные числа** - без `$RANDOM` (работает в dash/sh)
- 📝 **Многострочный ввод** - функция `reader()` для интерактивного кодинга
- 🎨 **ASCII рисование** - `paint()` для терминального арта
- 🔒 **Константы** - защищённые переменные через фоновые циклы
- 🔐 **Защита паролем** - `anonim()` для безопасности скриптов
- 🎭 **ООП синтаксис** - класс-подобные структуры
- 🚀 **Фоновое выполнение** - семейство spy-функций
- 🌈 **Цветной вывод** - поддержка ANSI escape-кодов

---

## 📚 Function Categories / Категории функций

### Variables / Переменные

- `var(name, value)` - assign variable
- `varP(var)` - increment (++)
- `varM(var)` - decrement (--)
- `constant(var, val, interval)` - protected constant
- `jmp(var, val)` - jump/assign
- `udel(var)` - unset variable

### Output / Вывод

- `exo(text)` - echo with newline
- `Exo(text)` - printf without newline
- `moreexo(n, text)` - repeat echo N times
- `Cexo(color, text)` - colored output

### Arrays / Массивы

- `mass(string)` - create array from string
- `massexo(array, index)` - get element by index
- `massfored(array, cmd)` - foreach loop

### Loops / Циклы

- `fored(start, end, cmd)` - for loop
- `wh(condition, cmd)` - while loop
- `counted(start, end)` - print numbers

### Conditions / Условия

- `fif(cond, then, else)` - inline if-else
- `cased(val, c1, cmd1...)` - case statement
- `equal(a, b)` - string comparison
- `ge/gt/le/lt` - numeric comparisons

### Classes / Классы

**EN:**
```sh
# Define class with constructor and methods
class "name='Player'; health=100" \
    "attack" "health=\$(( \$health - 10 )); exo 'Health: \$health'" \
    "heal" "health=\$(( \$health + 20 )); exo 'Healed! Health: \$health'"

# Use methods
attack
attack
heal
RU:
# Определить класс с конструктором и методами
class "имя='Игрок'; здоровье=100" \
    "атака" "здоровье=\$(( \$здоровье - 10 )); exo 'Здоровье: \$здоровье'" \
    "лечение" "здоровье=\$(( \$здоровье + 20 )); exo 'Вылечен! Здоровье: \$здоровье'"

# Использовать методы
атака
атака
лечение
Files / Файлы
COPY(src, dst) - copy file
frd(file) - read file
prog(text, file) - write to file
isfile/isdir(path) - check existence
Interactive / Интерактив
sREPL(var) - start REPL shell
reader() - multi-line input mode
paint() - ASCII art drawing
readp(prompt, var) - read with prompt
Background / Фоновое выполнение
spy(cmd) - run in background
spy2(cmd1, cmd2) - cmd1 && cmd2 in background
spy3(cmd1, cmd2) - cmd1 | cmd2
spy4(cmd1, cmd2) - piped background
💡 Usage Examples / Примеры использования
Random Numbers / Случайные числа
EN:
RANDSTART              # Initialize global RANDOM
exo $RANDOM           # Print random number

RANDOMname myvar      # Store random in variable
exo $myvar
RU:
RANDSTART              # Инициализировать глобальный RANDOM
exo $RANDOM           # Вывести случайное число

RANDOMname мояперем    # Сохранить случайное в переменную
exo $мояперем
Multi-line Input / Многострочный ввод
EN:
reader
&+[1]:: var x 10
&+[2]:: fored 1 $x "exo 'Line \$foredSTART'"
&+[3]:: reader.stop    # Execute code
RU:
reader
&+[1]:: var x 10
&+[2]:: fored 1 $x "exo 'Строка \$foredSTART'"
&+[3]:: reader.stop    # Выполнить код
Protected Constants / Защищённые константы
EN:
constant CONFIG_PATH "/etc/myapp" 0.5
# Variable resets every 0.5 seconds
var CONFIG_PATH "/tmp"
slp 1
exo $CONFIG_PATH  # Still "/etc/myapp"!
RU:
constant ПУТЬ_КОНФИГА "/etc/myapp" 0.5
# Переменная сбрасывается каждые 0.5 секунды
var ПУТЬ_КОНФИГА "/tmp"
slp 1
exo $ПУТЬ_КОНФИГА  # Всё ещё "/etc/myapp"!
Arrays / Массивы
EN:
# Create array from space-separated string
mass "apple orange banana"
exo $1  # apple
exo $2  # orange
exo $3  # banana

# Get element by index
massexo "red green blue" 2  # green

# Iterate over array
massfored "one two three" "exo 'Item: \$1'"
RU:
# Создать массив из строки с пробелами
mass "яблоко апельсин банан"
exo $1  # яблоко
exo $2  # апельсин
exo $3  # банан

# Получить элемент по индексу
massexo "красный зелёный синий" 2  # зелёный

# Итерация по массиву
massfored "один два три" "exo 'Элемент: \$1'"
Loops / Циклы
EN:
# Simple for loop
fored 1 5 "exo 'Count: \$foredSTART'"

# While loop with condition
var counter 0
wh "\$counter -lt 3" "exo 'Counter: \$counter'; varP counter"

# Repeat text N times
moreexo 3 "Hello!"
RU:
# Простой цикл for
fored 1 5 "exo 'Счёт: \$foredSTART'"

# Цикл while с условием
var счётчик 0
wh "\$счётчик -lt 3" "exo 'Счётчик: \$счётчик'; varP счётчик"

# Повторить текст N раз
moreexo 3 "Привет!"
Conditions / Условия
EN:
# Inline if-else
var age 18
fif "\$age -ge 18" "exo 'Adult'" "exo 'Minor'"

# Case statement
var cmd "help"
cased $cmd \
    "help" "exo 'Show help'" \
    "exit" "qt" \
    "run" "exo 'Running...'" \
    "*" "exo 'Unknown command'"
RU:
# Условие в одну строку
var возраст 18
fif "\$возраст -ge 18" "exo 'Взрослый'" "exo 'Несовершеннолетний'"

# Case оператор
var команда "помощь"
cased $команда \
    "помощь" "exo 'Показать помощь'" \
    "выход" "qt" \
    "запуск" "exo 'Запускаю...'" \
    "*" "exo 'Неизвестная команда'"
Background Execution / Фоновое выполнение
EN:
# Run in background
spy "slp 5; exo 'Done!'"

# Conditional background
spy2 "equal \$USER 'root'" "exo 'Admin mode'"

# Piped execution
spy3 "frd data.txt" "gp 'error'"

# Piped background
spy4 "counted 1 100" "gp '5'"
RU:
# Запустить в фоне
spy "slp 5; exo 'Готово!'"

# Условное выполнение в фоне
spy2 "equal \$USER 'root'" "exo 'Режим администратора'"

# Выполнение с pipe
spy3 "frd данные.txt" "gp 'ошибка'"

# Pipe в фоне
spy4 "counted 1 100" "gp '5'"
ASCII Art / ASCII рисование
EN:
paint
  ***
 *****
*******
  |
  |

# Press Enter on empty line to exit
RU:
paint
  ***
 *****
*******
  |
  |

# Нажмите Enter на пустой строке для выхода
Colors / Цвета
EN:
# ANSI color codes
Cexo 31 "Red text"      # 31 = red
Cexo 32 "Green text"    # 32 = green
Cexo 33 "Yellow text"   # 33 = yellow
Cexo 34 "Blue text"     # 34 = blue

# Colored prompt
Creadp 36 "Enter name: " username
exo "Hello, $username!"
RU:
# ANSI цветовые коды
Cexo 31 "Красный текст"   # 31 = красный
Cexo 32 "Зелёный текст"   # 32 = зелёный
Cexo 33 "Жёлтый текст"    # 33 = жёлтый
Cexo 34 "Синий текст"     # 34 = синий

# Цветной промпт
Creadp 36 "Введите имя: " имяпользователя
exo "Привет, $имяпользователя!"
🎯 Use Cases / Применение
EN:
Embedded systems - routers, IoT devices with only /bin/sh
Minimal containers - Alpine, BusyBox, scratch images
Recovery environments - initramfs, rescue shells
Educational purposes - learning shell scripting
Quick prototyping - interactive development
RU:
Встраиваемые системы - роутеры, IoT устройства с только /bin/sh
Минимальные контейнеры - Alpine, BusyBox, scratch образы
Recovery окружения - initramfs, rescue shells
Образовательные цели - изучение shell скриптинга
Быстрое прототипирование - интерактивная разработка
⚙️ Requirements / Требования
EN:
POSIX-compatible shell (/bin/sh, dash, ash, busybox sh)
Basic utilities: date, cat, grep, find
No bash/zsh required
RU:
POSIX-совместимый shell (/bin/sh, dash, ash, busybox sh)
Базовые утилиты: date, cat, grep, find
Не требуется bash/zsh
📜 License / Лицензия
GPL-3.0 License
👤 Author / Автор
Rost999
