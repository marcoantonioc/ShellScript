#!/bin/bash

# serve para encontrar diretorios nos sites

for palavra in $(cat /root/bommer.txt);do
procura=$(curl -s -o /dev/null -w "%{http_code}" $1/$palavra/)
if [ $procura == "200" ];then
echo "Diretorio encontrado"
else
echo "Diretorio não encontrado"
fi
done
