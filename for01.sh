#!/bin/bash

echo -e "Indique um caminho :"
read caminho

for item in $caminho/*;do
if [ -d $item ]; then
  echo "O $item é um : diretório"
elif [ -f $item ];then
  echo "O $item é um : arquivo"
fi
done



