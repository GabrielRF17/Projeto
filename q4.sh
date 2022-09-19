v=()
dir=$(zenity --entry --text "numero")
cont=0
while [ $cont -le $dir ]
do
if [ $( echo $cont%2 | bc) -eq 0 ]
then
	v+=($cont)
fi
cont=$((cont+1))
done
zenity --list \
    --title="Trabalho" \
    --column="Numeros" \
    --text "" \
    "${v[@]}"
