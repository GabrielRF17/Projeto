#!/bin/bash
#Recebe o primeiro valor
x1=$(zenity --entry --text "digite primeiro valor")
#Recebe o segundo valor
x2=$(zenity --entry --text "digite segundo valor")
echo "$x1"
#Diz qual é o maior Número ou se são iguais
if [ $x1 -gt $x2 ]; then
    zenity --info --text="maior numero é $x1"
	
else
 if [ $x2 -gt $x1 ]; then
	zenity --info --text="maior numero é $x2"
  
  else
  	zenity --info --text="os numeros sao iguais"
  fi
 fi
soma=$(($x1+$x2))
 zenity --info --text="Soma dos numeros igua a $soma"
