#!/bin/bash

echo "Indique o primeriro caminho: "
read caminho1
echo "Indique o primeiro arquivo :"
read arq1
total1=`echo $caminho1/$arq1`
echo "INdique o segundo caminho : "
read caminho2
echo "Indique o segundo arquivo"
read arq2
total2=`echo $caminho2/$arq2`

if [ $total1 -nt $total2 ]; then
  echo "O arquivo $arq1 é mais recente do que o $arq2"

elif [ $total1 -ot $total2 ]; then
  echo "O arquivo $arq1 é mais velho que o arquivo $arq2"
else
  echo "Os dois arquivos têm a mesma idade"
fi

