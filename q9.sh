nome=$(zenity --entry --text "Digite as palavras a serem ordenadas")
#ordena em ordem alfabetica
nome=$(tr " " "\\n" <<< "$nome"|sort|paste -sd ' ')
#troca espaços por \n
nome=$(echo $nome | tr [:space:] '\n')  

zenity --list \
    --title="Trabalho" \
    --column="Palavras em ordem alfabetica" \
    --text "" \
    "$nome"
