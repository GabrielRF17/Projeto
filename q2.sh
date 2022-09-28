#!/bin/bash
nome=$(zenity --entry --text "nome")

zenity --info --text="usuário: $nome"

if [[ -n $(cat dados | grep -w -i ^$nome) ]]; then
	zenity --info --text="$nome: usuário encontrado."

else
    zenity --info --text="$nome: usuário não encontrado."
fi
