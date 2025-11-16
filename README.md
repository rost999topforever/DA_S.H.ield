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
shift 1
if [ "$1" = "args" ] ; then
shift 1
eval "$1"
shift 1
fi
while [ $# -gt 0 ] ; do
eval "${classname}_$1() {
$2;
}"
shift 2
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
shift 3
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
shift 9
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

DSHIELDMAN() {
echo "1. counted
2. RANDSTART
3. RANDOMname
4. evl
5. constant
6. Exo
7. exo
8. massexo
9. massfored
10. reader
11. mass
12. varP
13. varM
14. fored
15. Exoses
16. class
17. fif
18. COPY
19. COntinued
20. wh
21. traped
22. md
23. readp
24. prog
25. proger
26. print
27. reprint
28. DA_SHield
29. sREPL
30. trapERR
31. SMALLslp
32. smallPrompt
33. longPrompt
34. math
35. reseted
36. or
37. slp
38. BIGslp
39. stop
40. moreexo
41. moreExo
42. exoPWD
43. exoPID
44. spy
45. spy2
46. spy3
47. jmp
48. udel
49. cased
50. steps
51. spy4
52. func
53. nostar
54. frd
55. gp
56. star
57. qt
58. FI
59. Cexo
60. Cprint
61. Creadp
62. shBANG
63. pmc
64. var
65. PIPE
66. NOPIPE
67. RUN
68. DOit
69. GoTo
70. and
71. ge
72. gt
73. le
74. lt
75. equal
76. anonim
77. isfile
78. isdir
79. spyRun
80. chIFS
81. merge
82. paint
83. Yn
84. compil
85. road
86. savetime
87. stonewrite
88. me
89. oldvar
90. prinTAR
91. roast
92. unroast
93. sprint
94. objected
95. coded
96. createOBJDSH
97. openOBJDSH
98. openallOBJDSH
99. delallOBJDSH
100. comitOBJDSH
101. rewriteOBJDSH
102. loadOBJDSH
103. createART
104. filered
105. twostar
106. calcmode
107. sREPL
108. DSHIELDMAN
109.setframe
110. startinfinitywh
111. exitterm
112. deco
113. write
114. GOTOrep
115. reTRUE
116. reFALSE
117. spy5
118. spy6
119. def
120. sell"
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
shift 2 
clear
done
}

startinfinitywh() {
while true ; do
eval "$1"
done
}

sREPL "RANDOM"
