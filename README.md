
#!/bin/sh

DAshieldprompt="$( basename $PWD )"
DASHELDPROMPT=0

counted() {
continedSTART="$1"
continedEND="$2"
while [ "$continedSTART" -le "$continedEND" ]; do
printf "%s\n" "$continedSTART"
continedSTART=$(( $continedSTART + 1))
done
}

RANDSTART() {
RANDOM=$(( $(date +%s) % $$ ))
}

RANDOMname() {
eval "$1=$(( $(date +%s) % $$ ))"
}

evl() {
eval "$1"
}

constant() {
while true ; do 
eval "$1=$2"
sleep $3  2>/dev/null || sleep 0.5
done &
}

Exo() {
printf "%s" "$1"
}

exo() {
echo "$1"
}

massexo() {
set -- $1
eval "echo '\$$2'"
}

massfored() {
set -- $1
while [ $# -gt 0 ] ; do
eval "$2"
shift
done
}

reader() {
READERCOUNT=1
READERRANDOM=$(( $(date +%s) % $$ ))
trap "rm 'TIMEREADERFILE$READERRANDOM.sh' ; unset READERC ;unset filename ;unset READERRANDOM ; break" INT TERM HUP EXIT
while true ; do
printf "&+[$READERCOUNT]::"
read READERC
if [ "$READERC" = "reader.stop" ] ; then
. "TIMEREADERFILE$READERRANDOM.sh"
rm "TIMEREADERFILE$READERRANDOM.sh"
unset READERC
unset READERRANDOM
break
elif [ "$READERC" = "reader.save" ] ; then
read filename
cat "TIMEREADERFILE$READERRANDOM.sh" > "$filename.sh"
rm "TIMEREADERFILE$READERRANDOM.sh"
unset READERC
unset filename
unset READERRANDOM
break
else
READERCOUNT=$(( $READERCOUNT + 1 ))
printf "%s\n" "$READERC" >> "TIMEREADERFILE$READERRANDOM.sh"
fi 
done
}

mass() {
set -- "$1"
}

varP() {
eval "$1=$(( $1 + 1 ))"
}

varM() {
eval "$1=$(( $1 - 1 ))"
}

fored() {
foredSTART="$1"
foredEND="$2"
while [ "$foredSTART" -le "$foredEND" ]; do
eval "$3"
foredSTART=$(( $foredSTART + 1))
done
unset foredSTART foredEND
}

Exoses() {
exosesSTART="$1"
exosesEND="$2"
while [ "$exosesSTART" -le "$exosesEND" ]; do
printf "%s\n" "$3"
exosesSTART=$(( $exosesSTART + 1))
done
unset exosesSTART exosesEND
}

class() {
eval "classname=$1"
shift 
if [ "$1" = "args" ] ; then
shift 
eval "$1"
shift 
fi
while [ $# -gt 0 ] ; do
eval "${classname}_$1() {
$2;
}"
shift 
shift
done
unset classname
}

fif() {
if eval [ "$1" ] ; then
eval "$2"
else
eval "$3"
fi
}

COPY() {
cat "$1" > "$2"
}

COntinued() {
cat "$1" >> "$2"
}

wh() {
while eval [ "$1" ] ; do
eval "$2"
done
}

traped() {
trap "" INT TERM 
}

md() {
mkdir "$1"
}

readp() {
printf "%s" "$1"
read $2
}

prog() {
echo "$1" > "$2"
}

proger() {
echo "$1" >> "$2"
}

print() {
printf "%s" "$1" >> $2
}

reprint() {
printf "%s" "$1" > $2
}

DA_SHield() {
echo "DA_S.H.ield by Rost999"
echo "_ --------------_"
echo "_   ^^  ^^  ^^  _"
echo "_   ##  ##  ##  _"
echo "_  ############ _"
echo "_   #<@^@^@>#   _"
echo "_    #######    _"
echo "_      ###      _"
echo "_       #       _"
echo "----------------"
echo "DA_S.H.ield GPL 3.0"
echo "made with <3"
}

sREPL() {
trap "" INT TERM
echo "DA_S.H.ield with <3 by Rost999 ~~>"
while true ; do
eval "$1=$(( $(date +%s) % $$))" 2>/dev/null || eval "RANDOM=$(( $(date +%s) % $$))"
eval "$2=$(( $(( $(date +%s) % $$ )) * $(( $(date +%s) % $$ )) ))" 2>/dev/null || eval "nutRANDOM=$(( $(( $(date +%s) % $$ )) * $(( $(date +%s) % $$ )) ))"
if [ $DASHELDPROMPT = 0 ] ; then
DAshieldprompt="$( basename $PWD )"
else
DAshieldprompt="$PWD"
fi
printf "&+[%s]::" "$DAshieldprompt"
read DASHELDEVAL
eval "$DASHELDEVAL"
done
}

trapERR(){ 
eval "$1 2>/dev/null" 
}

SMALLslp() {
sleep $(( $1 / 10 ))
}

smallPrompt() {
DAshieldprompt="$( basename $PWD )"
DASHELDPROMPT=0
}

longPrompt() {
DAshieldprompt="$PWD"
DASHELDPROMPT=1
}

math() {
eval "echo $(( $1 $2 $3 ))"
}

reseted() {
set -- 
}

or() {
eval "$1 || $2"
}

slp() {
sleep $1
}

BIGslp() {
sleep $(( $1 * 10 ))
}

stop() {
break
}

moreexo() {
moreexovar=$1
while [ $moreexovar -gt 0 ] ; do
echo "$2"
moreexovar=$(( $moreexovar - 1 ))
done
unset moreexovar
}

moreExo() {
moreExovar=$1
while [ $moreExovar -gt 0 ] ; do
printf "%s" "$2"
moreExovar=$(( $moreExovar - 1 ))
done
unset moreExovar
}

exoPWD() {
echo "$PWD"
}

exoPID() {
echo "$$"
}


spy() {
eval "$1" &
}

spy2() {
eval "$1" && eval "$2" &
}

spy3() {
eval "$1" | eval "$2" 
}

jmp() {
eval "$1=$2"
}

udel() {
unset "$1"
}

cased() {
case $1 in 
"$2")
eval "$3"
;;
"$4")
eval "$5"
;;
"$6") 
eval "$7"
;;
*)
eval "$8"
;;
esac
}

steps() {
stepsSTART="$1"
stepsEND="$2"
while [ "$stepsSTART" -le "$stepsEND" ]; do
eval "$3=\$(( \$$3 * $4 ))"
stepsSTART=$(( $stepsSTART + 1))
done
unset stepsSTART stepsEND
}

spy4() {
eval "$1" | eval "$2" &
}

func() {
eval "$1(){ $2 }"
}

nostar() {
echo *
}

frd() {
cat "$1"
}

gp() {
grep "$1" "$2"
}

star() {
echo *.$1
}

qt() {
exit
}

FI() {
find -name "$1"
}

Cexo() {
printf "\033[$1m%s\033[0m\n" "$2"
}

Cprint() {
printf "\033[$1m%s\033[0m" "$2"
}

Creadp() {
printf "\033[$1m%s\033[0m" "$2"
read $3
}

shBANG() {
DASHELDC=$( cat "$1" )
echo "#!/bin/sh" > "$1"
echo "$DASHELDC" >> "$1"
unset DASHELDC
}

pmc() {
eval "$1=$(( $2 $3 $4 ))"
}

var() {
eval  "$1=$2"
}

PIPE() {
IFS=';'
set -- $1
while [ $# -gt 0 ]; do
eval "$1"
if [ $? -ne 0 ]; then
break
fi
shift
done
unset IFS
}

NOPIPE() {
IFS=';'
set -- $1
while [ $# -gt 0 ]; do
eval "$1"
if [ $? -eq 0 ]; then
break
fi
shift
done
unset IFS
}

RUN() {
eval "sh $1"
}

DOit() {
. "$1"
}

GoTo() {
eval "cd $1"
}

and() {
eval "$1 && $2"
}

ge() {
[ $1 -ge $2 ]
}

gt() {
[ $1 -gt $2 ]
}

le() {
[ $1 -le $2 ]
}

lt() {
[ $1 -lt $2 ]
}

equal() {
[ $1 = $2 ]
}

anonim() {
TIMECATVAR=$( cat "$1" )
printf "#!/bin/sh \n" > "$1.sh"
echo "read codeforfile ; if [ '$codeforfile' = '$2' ] ; then eval '$TIMECATVAR' || echo '$TIMECATVAR'  else  exit ; fi " >> "$1.sh"
unset TIMECATVAR
}

isfile() {
[ -f "$1" ]
}

isdir() {
[ -d "$1" ]
}

spyRun() {
 [ -f "$1" ] && . "$1" &
}

chIFS() {
NIFS=0
OLDIFS="$IFS"
IFS="$1"
sleep $2  2>/dev/null ; NIFS=$(( $NIFS + 1 )) || continue 
if [ $NIFS -gt 0 ] ; then IFS=$OLDIFS ; fi
unset NIFS OLDIFS
}

merge() {
while [ $# -gt 0 ] ; do
eval "$1='$2$3'"
shift 
shift
shift
done
}

paint() {
while true ; do
read paintvar
if [ "$paintvar" = "" ] ; then
break
fi
done
unset paintvar
}

Yn() {
while true ; do 
printf "Y/n:"
read YNvar
if [ "$YNvar" = "Y" ] ; then
break
return 0
else
break
fi
done
unset YNvar
}

compil() {
eval "$( cat $1 )"
}

road() {
timeRoad=$1
shift
while [ $# -gt 0 ] ; do
eval "$1"
sleep $timeRoad
shift
done
unset timeRoad
}

savetime() {
eval "$1=$(date +%s)"
}

stonewrite() {
echo "#$1" >> "$2"
}

me() {
whoami
}

oldvar() {
eval "saveoldvar='\$$1'"
eval "$1=$2"
sleep  $3 2>/dev/null || sleep 10
eval "$1=\$saveoldvar"
unset saveoldvar
}

prinTAR() {
cat "$1" "$2" > "$3"
}

roast() {
eval "$3=$(( $2 + $1 )) 2>/dev/null || $3='$2$1'"
}

unroast() {
eval "$1=$(( $3 / 2 )) && $2=$(( $3 / 2 )) || $1='$3' && $2='$3'"
}

sprint() {
while [ $# -gt 0 ] ; do
eval "$1;$2;$3;$4;$5;$6;$7;$8;$9"
shift 
shift
shift
shift
shift
shift
shift
shift
shift
done
}

objected() {
echo "#$1" > "$2.objDSH"
}

coded() {
echo "$1" >> "$2.objDSH"
}

createOBJDSH() {
echo "#$1" > "$2.objDSH"
echo "$3" >> "$4.objDSH"
cat "$2" "$4" > "$5"
}

openOBJDSH(){
eval "cat '$1'"
}

openallOBJDSH() {
cat *.objDSH
}

delallOBJDSH() {
rm *.objDSH
}

comitOBJDSH() {
oldfilecomit=$(cat "$2")
echo "$1" >> "$2.objDSH"
eval ". $2.objDSH"
printf "release comit(Y/n):"
read choisecomit
if [ "$choisecomit" = "Y" ] ; then
printf ""
else
printf "$oldfilecomit" > "$2"
fi
unset choisecomit
unset oldfilecomit
}

rewriteOBJDSH() {
cat "$1.objDSH" > "$2.sh"
rm "$1.objDSH"
}

loadOBJDSH() {
cat "$1.sh" > "$2.objDSH"
rm "$1.sh"
}

createART() {
printf "echo '%s'" "$1" > "$2.sh"
eval "sh '$2.sh'"
}

filered() {
while true ; do
ls 
read fileredvar
if [ "$fileredvar" = "*" ] ; then
read fileredvarp
read fileredvarf
eval "$fileredvarf *.$fileredvarp"
elif [ "$fileredvar" = "exit" ] ; then
break
else
eval "$fileredvar"
fi 
done
unset fileredvar fileredvarp fileredvarf
}

twostar() {
eval "$1=$(( $2 * $2 ))"
}

calcmode() {
while true ; do
read calcs
read calcss
read calcsss
echo "$(( $calcs $calcss $calcsss ))"
if [ "$calcs" = "exit" ] || [ "$calcsss" = "exit" ] || [ "$calcss" = "exit" ]; then
exit
fi
done
unset calcs calcss calcsss
}

exitterm() {
eval "sh"
}



deco() {
eval "$1"
eval "$2"
eval "$1"
}

spy5() {
eval "{ $1 | $2; } &"
}

spy6() {
eval "$1 | $2 || $3"
}

def() {
eval "$1() {
eval '$2'
$3
}"
}

DSHIELDMAN() {
echo "=== DA_S.H.ield ==="
echo "1. counted START END"
echo "2. RANDSTART" 
echo "3. RANDOMname VARNAME"
echo "4. evl COMMAND"
echo "5. constant VAR VALUE SECONDS"
echo "6. Exo TEXT"
echo "7. exo TEXT"
echo "8. massexo VARS INDEX"
echo "9. massfored 'COMMANDS'"
echo "10. reader"
echo "11. mass VAR"
echo "12. varP VAR"
echo "13. varM VAR"
echo "14. fored START END 'COMMAND'"
echo "15. Exoses START END TEXT"
echo "16. class NAME [args VARS] FUNC1 CODE1 FUNC2 CODE2..."
echo "17. fif 'COND' 'THEN' 'ELSE'"
echo "18. COPY FILE1 FILE2"
echo "19. COntinued FILE1 FILE2"
echo "20. wh 'COND' 'CMD'"
echo "21. traped"
echo "22. md DIR"
echo "23. readp PROMPT VAR"
echo "24. prog TEXT FILE"
echo "25. proger TEXT FILE"
echo "26. print TEXT FILE"
echo "27. reprint TEXT FILE"
echo "28. DA_SHield"
echo "29. sREPL RAND_VAR1 RAND_VAR2"
echo "30. trapERR COMMAND"
echo "31. SMALLslp SECONDS"
echo "32. smallPrompt"
echo "33. longPrompt"
echo "34. math NUM1 OPERATOR NUM2"
echo "35. reseted"
echo "36. or CMD1 CMD2"
echo "37. slp SECONDS"
echo "38. BIGslp SECONDS"
echo "39. stop"
echo "40. moreexo COUNT TEXT"
echo "41. moreExo COUNT TEXT"
echo "42. exoPWD"
echo "43. exoPID"
echo "44. spy COMMAND"
echo "45. spy2 CMD1 CMD2"
echo "46. spy3 CMD1 CMD2"
echo "47. jmp VAR VALUE"
echo "48. udel VAR"
echo "49. cased VALUE CASE1 CMD1 CASE2 CMD2 CASE3 CMD3 DEFAULT_CMD"
echo "50. steps START END VAR MULTIPLIER"
echo "51. spy4 CMD1 CMD2"
echo "52. func NAME CODE"
echo "53. nostar"
echo "54. frd FILE"
echo "55. gp PATTERN FILE"
echo "56. star EXT"
echo "57. qt"
echo "58. FI PATTERN"
echo "59. Cexo COLOR TEXT"
echo "60. Cprint COLOR TEXT"
echo "61. Creadp COLOR PROMPT VAR"
echo "62. shBANG FILE"
echo "63. pmc VAR NUM1 OPERATOR NUM2"
echo "64. var VAR VALUE"
echo "65. PIPE 'CMD1;CMD2;...'"
echo "66. NOPIPE 'CMD1;CMD2;...'"
echo "67. RUN FILE"
echo "68. DOit FILE"
echo "69. GoTo DIR"
echo "70. and CMD1 CMD2"
echo "71. ge NUM1 NUM2"
echo "72. gt NUM1 NUM2"
echo "73. le NUM1 NUM2"
echo "74. lt NUM1 NUM2"
echo "75. equal VAL1 VAL2"
echo "76. anonim FILE PASSWORD"
echo "77. isfile FILE"
echo "78. isdir DIR"
echo "79. spyRun FILE"
echo "80. chIFS CHAR SECONDS"
echo "81. merge VAR1 VAL1 VAL2 VAR2 VAL3 VAL4..."
echo "82. paint"
echo "83. Yn"
echo "84. compil FILE"
echo "85. road TIME CMD1 CMD2..."
echo "86. savetime VAR"
echo "87. stonewrite TEXT FILE"
echo "88. me"
echo "89. oldvar VAR VALUE SECONDS"
echo "90. prinTAR FILE1 FILE2 FILE3"
echo "91. roast VAL1 VAL2 VAR"
echo "92. unroast VAR1 VAR2 VAL"
echo "93. sprint CMD1 CMD2 CMD3 CMD4 CMD5 CMD6 CMD7 CMD8 CMD9..."
echo "94. objected NAME FILE"
echo "95. coded CODE FILE"
echo "96. createOBJDSH NAME FILE1 CODE FILE2 OUTPUT"
echo "97. openOBJDSH FILE"
echo "98. openallOBJDSH"
echo "99. delallOBJDSH"
echo "100. comitOBJDSH CODE FILE"
echo "101. rewriteOBJDSH FILE1 FILE2"
echo "102. loadOBJDSH FILE1 FILE2"
echo "103. createART TEXT FILE"
echo "104. filered"
echo "105. twostar VAR NUM"
echo "106. calcmode"
echo "107. sREPL RAND_VAR1 RAND_VAR2"
echo "108. DSHIELDMAN"
echo "109. setframe TEXT1 TIME1 TEXT2 TIME2..."
echo "110. startinfinitywh COMMAND"
echo "111. exitterm"
echo "112. deco CMD1 CMD2"
echo "113. write TEXT [FILE]"
echo "114. GOTOrep COUNT COMMAND"
echo "115. reTRUE"
echo "116. reFALSE"
echo "117. spy5 CMD1 CMD2"
echo "118. spy6 CMD1 CMD2 CMD3"
echo "119. def NAME CODE1 CODE2"
echo "120. sell VAR1 VAR2"
echo "121. moretest COUNT FILE"
echo "123. nutRANDOM"
echo "124. nutRANDOMname VAR"
echo "125. decofunc NAME CODE1 CODE2"
echo "126. shf COUNT"
echo "127. turtle CHAR COUNT [TEXT]"
echo "128. renameindir DIR EXT PREFIX"
}

reTRUE() {
return 0
}

reFALSE() {
return 1
}

write() {
echo "$1"
[ -f "$2" ] && echo "$1" >> "$2" 2>/dev/null || true
}

GOTOrep() {
eval "GOTOr=$1"
while [ $GOTOr -gt 1 ] ; do 
eval "$2"
GOTOr=$(( $GOTOr - 1 ))
done
unset GOTOr
}

sell() {
eval "$1=$(( $1 + $2 ))"
eval "unset $2"
}

setframe() {
while [ $# -gt 0 ] ; do
echo "$1"
sleep $2 2>/dev/null || sleep 0.5
shift 
shift
clear
done
}

startinfinitywh() {
while true ; do
eval "$1"
done
}

meretest() {
eval "mtestDASH=$1"
while [ $mtestDASH -ge 1 ] ; do
eval ". $2" &
mtestDASH=$(( $mtestDASH - 1 ))
done
unset mtestDASH
}

nutRANDOMname() {
eval "$1=$(( $(( $(date +%s) % $$ )) * $(( $(date +%s) % $$ )) ))"
}

nutRANDOM() {
eval "RANDOM=$(( $(( $(date +%s) % $$ )) * $(( $(date +%s) % $$ )) ))"
}

shf() {
eval "shfvar=$1"
while [ $shfvar -gt 0 ] ; do
shift
shfvar=$(( $shfvar - 1 ))
done
unset shfvar
}

turtle() {
eval "counterturtle=$2"
if [ "$1" = "|" ] || [ "$1" = "+" ]; then
while [ $counterturtle -gt 0 ]; do
printf "$3" 2>/dev/null || printf "#"
done
fi
if [ "$1" = "-" ]; then
while [ $counterturtle -gt 0 ]; do
printf "$3 \n" 2>/dev/null || printf "# \n"
done
fi
unset counterturtle
}

decofunc() {
eval "$1() { eval '$2'
eval '$3'
eval '$2'
}"
}

renameindir() {
cd "$1"
ls *."$2" | while read indexdirrenamefile ; do
eval "$3=$(cat "$indexdirrenamefile")"
rm "$indexdirrenamefile"
echo "$3" > "$4_$indexdirrenamefile"
echo "$4_$indexdirrenamefile"
done
unset indexdirrenamefile
}


sREPL "RANDOM" "nutRANDOM"
