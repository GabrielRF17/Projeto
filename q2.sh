#!/bin/bash
nome=$(zenity --entry --text "nome")

zenity --info --text="usuario: $nome"

if [[ -n $(cat dados | grep -w -i ^$nome) ]] ; then
	zenity --info --text="$nome existe"

else
    zenity --info --text="nao existe"
fi
