#!/bin/bash

echo "Indique um número :"
read num
total=$num

while [ $num -ne 0 ]; do
echo "Indique um numer, 0 para sair :"
read num
total=$((total+num))
done 

echo "O total foi $total"



#echo "Enter Size(N)"
#read N

#i=1
#sum=0

#echo "Enter Numbers"
#while [ $i -le $N ]
#do
  #read num           #get number
  #sum=$((sum + num)) #sum+=num
  #i=$((i + 1))
#done

#echo $sum


#echo "Enter Size(N)"
#read N

#sum=0

#echo "Enter Numbers"
#for((i=1;i<=N;i++))
#do
  #read num           #get number
  #sum=$((sum + num)) #sum+=num
#done

#echo $sum







