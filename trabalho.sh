x=1

while [ "$x" != "" ]; do
x=$(zenity --list \
    --title="Trabalho" \
    --column="Questões" --column="Descrição" \
    --text "" --width=1000 --height=420\
    "Questão 1" "maior numero entre 2 numeros e sua soma" \
    "Questão 2" "verificação de usuario no sistema" \
    "Questão 3" "colocar (dir) nos arquivos que são diretorios" \
    "Questão 4" "exibe todos os numeros pares no intervalo de 0 ate x" \
    "Questão 5" "recebe nome de arquivo como parametro e informa se o mesmo existe e imprime seu tamanho em bytes" \
    "Questão 6" "exibe status partição/usuarios logados/data e hora" \
    "Questão 7" "ate agora nao entendi o q essa questao pede" \
    "Questão 8" "renomeia o nome da primeira linha do arquivo como titulo" \
    "Questão 9" "recebe lista de palavaras e exibe em ordem alfabetica" \
    "Questão 10" "exibe palavras em ordem alfabetica e para quando usuario digitar: sair" \
    "Questão 11" "calculadora" \
    "Questão 12" "usuarios cadastrados no diretorio home" \
    "Questão 13" "usuarios cadastrados no /etc/passwd " \
    "Questão 7" "Reservar laboratorio" \
    "Questão 8" "da o nome da primeira linha do arquivo como titulo" \
    "Questão 9" "recebe lista de palavaras e exibe em ordem alfabetica" \
    "Questão 10" "recebe varias palavras e exibe em ordem alfabedica (programa so encerra ao digitar palavra (sair))" \
    "Questão 11" "calculadora" \
    "Questão 12" "usuarios cadastrados no diretorio home" \
    "Questão 13" "usuarios cadastrados em /etc/passwd" \

)
[ -n "$x" ] && {
case "$x" in
"Questão 1")
bash Q1.sh

;;
"Questão 2")
bash q2.sh
;;

"Questão 3")
bash q3.sh
 ;;

"Questão 4")
bash q4.sh
 ;;

"Questão 5")
bash q5.sh
 ;;

"Questão 6")
bash q6.sh
 ;;

"Questão 7")
bash q7.sh
 ;;

"Questão 8")
bash q8.sh
 ;;

"Questão 9")
bash q9.sh
 ;;

"Questão 10")
bash q10.sh
 ;;

"Questão 11")
bash q11.sh
 ;;

"Questão 12")
bash q12.sh
 ;;

"Questão 13")
bash q13.sh
 ;;

esac
}
done

