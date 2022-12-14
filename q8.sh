#!/bin/bash
#script que renomeia arquivos de cada arquivo desse diretorio dando ao arquivo o nome da primeira palavra encontrada no mesmo arquivo

for file in $(echo *); do
  if [[ -d $file || $file = $(basename $BASH_SOURCE) ]]; then
    continue 
  fi

  # pega a primeira palavra da primeira linha do arquivo
  first_word=$(head -n1 $file | cut -d ' ' -f 1)

  # se o arquivo for vazio, ele não é renomeado
  [ -z $first_word ] && echo pulando $file && continue

  # se ja existir um arquivo ou um diretorio com o nome da variavel, entao adicionamos um numero no final do arquivo
  if [[ -f $first_word || -d $first_word ]] ; then
    first_word="${first_word}_$(($(ls | grep $first_word | wc -l)+1))"
  fi
  
  echo movendo $file para $first_word
  mv $file $first_word
done
