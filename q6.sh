x=1
while [ "$x" != "4" ];
do
x=$(zenity --list \
    --title="Trabalho" \
    --column="Opções" --column="Descrição" \
    --text "" \
    "1" "Exibir status da utilização das partições do sistema" \
    "2" "Exibir relação de usuário logados" \
    "3" "Exibir data/hora" \
    "4" "Sair" \
)
    
if [[ $x -eq 1 ]]; then
  zenity --info --text="$(df -h)"
elif [[ $x -eq 2 ]]; then
  zenity --info --text="$(who)"
elif [[ $x -eq 3 ]]; then
  zenity --info --text="$(date)"
elif [[ $x -eq 4 ]]; then
  zenity --info --text="Saindo..."

else
  zenity --info --text="opção invalida"
fi
done

