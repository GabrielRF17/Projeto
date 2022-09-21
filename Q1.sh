#!/bin/bash
x1=$(zenity --entry --text "Digite primeiro valor:")
x2=$(zenity --entry --text "Digite segundo valor:")
echo "$x1"
if [ $x1 -gt $x2 ]; then
    zenity --info --text="Maior número é: $x1"
	
else
 if [ $x2 -gt $x1 ]; then
	zenity --info --text="Maior número é: $x2"
  
  else
  	zenity --info --text="Os números são iguais!"
  fi
 fi
soma=$(($x1+$x2))
 zenity --info --text="A soma dos números é igual a: $soma"
