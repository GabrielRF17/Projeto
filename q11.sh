#!/bin/bash
p=$(zenity --entry --text "Digite algo")
zenity --info --text="$p=$(($p | bc))"

