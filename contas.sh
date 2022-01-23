#!/bin/bash

echo "Digite o primeiro valor : "
read n1
echo "Digite o secundo numero : "
read n2
total=0
echo "$n1+$n2=$[n1+n2]"

total=$[$n1+n2]

ok=$[$total*2]
echo $ok

a=` echo "scale=2; sqrt (81)" | bc` # bc é a calculadora do shell . já que ele não faz contas com numeros float

b=` echo "scale=2; 9/2" | bc`

echo $a

echo $b
