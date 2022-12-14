#!/bin/bash
# Programa para imprimir todas as datas em que serão ministradas aulas

# entrada: <data inicial> <data final> <dias da semana>
# saida: <data> <data> <data> ...

# Exemplo:
# entrada: 2008/02/07 2008/07/05 1,3
# saida: 11/02/2008, 13/02/2008, 18/02/2008, 20/02/2008, ...
v=($@)
function checar_data {
  # checa se a data é válida
  # entrada: <data>
  # saida: 1 se válida, 0 se inválida
  re='^[0-9]{4}/[0-9]{2}/[0-9]{2}$'

  if ! [[ $1 =~ $re ]]; then
    $(zenity --error --text"data inválida")
    exit
  fi
}

function checar_dias {
    # checa se os dias da semana estão no intervalo [0,6]
    # e estão separados por vírgula
    # entrada: <dias da semana>
    # exemplo: 1,3,5
    # saida: 1 se válido, 0 se inválido

    re='^[0-6](,[0-6])*$'
    if ! [[ $1 =~ $re ]]; then
        zenity --error --text "dias inválidos"
        exit
    fi
}

function checar_intervalo {
    # checa se a data inicial é menor que a data final
    # entrada: <data inicial> <data final>
    # saida: 1 se válida, 0 se inválida
    if [ $1 -gt $2 ]; then
        zenity --error --text "data inicial maior que data final"
        exit
    fi
}

data_inicial=$(zenity --entry --text "Data inicial (Padrão americano)")
data_final=$(zenity --entry --text "Data final (Padrão americano)")
dias=$(zenity --entry --text "dias")

checar_data $data_inicial
checar_data $data_final
checar_dias $dias

data_inicial=$(date -d "$data_inicial" +%s) # converte para segundos
data_final=$(date -d "$data_final" +%s) # converte para segundos

checar_intervalo $data_inicial $data_final

for ((i=$data_inicial; i<=$data_final; i+=86400)); do # incrementa em 1 dia (86400 segundos)
    data=$(date -d @$i +%d/%m/%Y) # converte para data
    dias_semana=$(date -d @$i +%w) # converte para dia da semana
    if [[ $dias =~ $dias_semana ]]; then # se o dia da semana está no intervalo
v+=" "	  
v+=$data    
	
    fi
done
v=$(echo ${v[@]} | tr [:space:] '\n') 
zenity --list \
    --title="Trabalho" \
    --column="Datas disponiveis" \
    --text "" --width=100 --height=500 \
    "${v[@]}"  
