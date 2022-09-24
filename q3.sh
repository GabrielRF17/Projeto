#!/bin/bash
v=()
p=''
x=$(zenity --entry --text "Digite o diretório")
if [ -d "$x" ]; then
	for opa in $(ls $x)
do
	p=$(echo "$opa $([ -d $x/$opa ] && echo "(dir)")")
    v+=("$p")
done
zenity --list \
    --title="Trabalho" \
    --column="Diretorios" \
    --text "" \
    "${v[@]}"

else
	echo "Não existe." && exit

fi 
