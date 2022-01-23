#!/bin/bash

echo "Inidique um numero : "
read num

maior=$num
menor=$num

while true;do
echo "Inidique um numero : "
read num

if [ $num -gt $maior ];then
  maior=$num

elif [ $num -eq 0 ];then
 break

elif [ $num -lt $menor ];then
menor=$num

fi
done

echo "O maior numero é $maior"

echo "O menor numero é $menor"
