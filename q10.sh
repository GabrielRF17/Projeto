#!/bin/bash
v=("$@")
while [ "$p" != 'sair' ]
do
#recebe uma palavra

p=$(zenity --entry --text "Digite uma palavra")

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
