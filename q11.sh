#!/bin/bash
p=$(zenity --entry --text "Digite alguma Operação Matemática")
zenity --info --text="$p=$(($p | bc))"

