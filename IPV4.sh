#!/bin/bash

if [ "$1"  == "" ]
then
echo "Não funciona assim "
echo "Exemplo $0 10.0.0"
else
for host in {1..254};do
ping -c1 $1.$host | grep "64 bytes" | cut -d " " -f 4
done
fi
