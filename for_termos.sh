#!/bin/bash

echo "Indique onde começa:"
read primeiro

echo "Indique a razão :"
read razao

clear

for i in $(seq $primeiro $razao $[(razao*10)-razao]);do
echo $i
done
exit


