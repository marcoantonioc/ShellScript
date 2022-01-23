#!/bin/bash

i=1

while [ -n "$1" ]; do

case "$1" in
-a)
echo "Escolheu A"
;;
-b)
echo "Escolheu B"
;;
-c)
echo "escolheu C"
;;
*)
echo "Opcao invalida"
;;
esac


#i=$((i + 1))
shift
done
