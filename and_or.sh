#!/bin/bash

echo "Indique o primeiro numero: "
read n1

echo "Indique o segundo numero: "
read n2

if [ $n1 -gt 5 ] && [ $n1 -lt 10 ]; then
  echo "O numero $n1 é maior que 5 mas menor que 10"
else
 echo "O numero é nenor que 5 ou maior que 10"
fi

if [ $n2 -eq 5 ] || [ $n2 -eq 10 ]; then
  echo "Voce escolheru o numero $n2"
else 
 echo "Voce não escolheu o numero 5 ou 10"
fi
