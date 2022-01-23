#!/bin/bash

echo "Indique um numero : "
read num

total=$num
until [ $num -eq 0 ];do
echo "Indique outro numero:"
read num
total=$((total+num))
done

echo "O total foi $total"
exit
