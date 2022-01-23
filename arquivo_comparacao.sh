#!/bin/bash
echo "Indique um canhimo :"
read caminho

echo "Indique o nome do arquivo: "
read arquivo

total=` echo $caminho/$arquivo`

if [ -e $total ]; then
  echo "O camiho $caminho ,existe !"
else
  echo "O arquivo $arquivo , não existe !"
fi


if [ -x $total ]; then
  echo "O arquino $arquivo tem permissão de executar"
else
  echo "O arquivo $arquivo , nao tem permissão para executar"
fi
