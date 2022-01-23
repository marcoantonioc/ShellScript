#!/bin/bash

echo "Digite uma palavra : "
read palavra 

ok=`echo -n $palavra` 

if [[ -n $palavra ]]; then
  echo "Voce escreveu uma palavra"

elif [[ -z $palavra ]]; then
  echo "Voce nao escreveu nada"
fi

#FUNCIONA 

if [[ $ok > 0 ]]; then

  echo "Tem contiudo, que é $ok"
else
  echo "Não tem nada"
fi
