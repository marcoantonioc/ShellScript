#!/bin/bash

echo "Digite a primeira palavra : "
read palavra1

echo "Digite a segunda palavra : "
read palavra2

if [[ $palavra1 > $palavra2 ]]; then
  echo "A primeira palavra é maior que a segunda palavra !"
elif [[ $palavra2 > $palavra1 ]]; then
  echo " A segunda palavra é maior que a primeira palavra!"
else
 echo "As duas palavras são iguais"
fi





