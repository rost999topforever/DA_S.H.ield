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
set -- $1
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
}

Exoses() {
exosesSTART="$1"
exosesEND="$2"
while [ "$exosesSTART" -le "$exosesEND" ]; do
printf "%s\n" "$3"
exosesSTART=$(( $exosesSTART + 1))
done
}

class() {
eval "$1"
shift 
while [ $# -ge 2 ]; do
eval "$1() { $2 }"
shift 2
done
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
echo "_  ##  ##  ##   _"
echo "_  ####@#####   _"
echo "_   ##@@@##     _"
echo "_    ##@##      _"
echo "_     ###       _"
echo "_      #        _"
echo "----------------"
echo "DA_S.H.ield GPL 3.0"
}

sREPL() {
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
eval "$1" && eval "$3" &
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
"$8")
eval "$9"
;;
*)
shift
eval "$9"
esac
}

steps() {
stepsSTART="$1"
stepsEND="$2"
while [ "$stepsSTART" -le "$stepsEND" ]; do
eval "$3=\$(( \$$3 * $4 ))"
stepsSTART=$(( $stepsSTART + 1))
done
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
continue
else
break
fi
done
unset YNvar
}

compil() {
eval "$( cat '$1' )"
}

conect() {
eval "curl $1"
}

TRUENETCATSERVER() {
while true ; do
{echo "HTTP/1.1 200 OK"
echo "Content-type: $1 $2"
echo ""
eval "$3"} | nc -l -p $4
done
}

road() {
timeRoad=$1
shift
while [ $# -gt 0 ] ; do
eval "$2"
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
saveoldvar="\$$1"
eval "$1=$2"
sleep  $3 2>/dev/null || sleep 10
eval "$1=$saveoldvar"
unset saveoldvar
}

NETCATSERVER() {
{echo "HTTP/1.1 200 OK"
echo "Content-type: $1 $2"
echo ""
eval "$3"} | nc -l -p $4
}

sREPL "RANDOM"