#!/bin/bash
dir=$(zenity --entry --text "Digite o diretorio")
        if [[ $(wc -c $dir) ]]
        then
                zenity --info --text=" $(wc -c $dir) bytes"
        else
        	zenity --info --text="Diretorio inexistente"
        fi
 
