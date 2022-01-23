#!/bin/bash

echo -e "Indique um caminho com o arquivo :"
read caminho

#ifsold=$iIFS
IFS=$'\n'

for nome in `cat $caminho`;do
echo "O nome é: $nome"
done
#IFS=$IFS.OLD
