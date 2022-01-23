#!/bin/bash

echo "Indique o primeiro numero: "
read n1

echo "Indique o segundo numero : "
read n2

echo "Indique o terceiro numero: "
read n3

a=$[n1*n2]
b=$[n3+n1]
c=$[a+b]

ok=`echo "scale=4; $c" | bc`

echo $ok
