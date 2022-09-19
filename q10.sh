#!/bin/bash
v=("$@")
while [ "$p" != 'sair' ]
do

p=$(zenity --entry --text "Digite algo")
if [ "$p" != 'sair' ]
then
v+="$p"
v+=" "
nome="${v[@]}"
#ordena em ordem alfabetica
nome=$(tr " " "\\n" <<< "$nome"|sort|paste -sd ' ')
#troca espaços por \n
nome=$(echo $nome | tr [:space:] '\n')  
zenity --list \
    --title="Trabalho" \
    --column="Palavras em ordem alfabetica" \
    --text "" \
    "$nome"
fi

done
