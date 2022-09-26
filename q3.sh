#!/bin/bash
v=()
p=''
x=$(zenity --entry --text "Digite o diretorio")
if [ -d "$x" ]; then
	for opa in $(ls $x)
do
	p=$(echo "$opa $([ -d $x/$opa ] && echo "(dir)")")
    v+=("$p")
done
zenity --list \
    --title="Trabalho" \
    --column="Diretorios" \
    --text "" --width=150 --height=500\
    "${v[@]}"

else
	zenity --error --text "Diretorio Inexistente" && exit

fi 
