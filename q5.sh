#!/bin/bash
dir=$(zenity --entry --text "Diretorio")
        if [[ $(wc -c $dir) ]]
        then
                zenity --info --text="bytes $(wc -c $dir)"
        else
        	zenity --info --text="Diretorio inexistente"
        fi
 
