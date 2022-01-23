#!/bin/bash

array=(laranja morango abacaxi) # definir o array

echo ${array[0]}  #mostra um valor especifico

array[0]=banana # trocar o valor

echo ${array[*]} # mostrar todos

unset array[2] #eliminar um valor

echo ${array[*]}

array[2]=abacaxi #adicionei um novo valor no array

echo ${array[*]}
