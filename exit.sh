#!/bin/bash

echo "INdique o nome de usuario para encontrar:"
read nome

if  cd / ; then
  ls
else
  echo "Diretorio não encontrado"
fi

echo $?
