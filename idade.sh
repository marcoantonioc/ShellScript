
#!/bin/bash
echo "Qual sua idade :"
read idade

if [ $idade -ge 18 ]; then
echo "Voce pode conduzir"
echo $?
elif [ $idade -lt 18 ]; then
echo "Voce não pode conduzir"
else
echo "O codigo nao funcionou"
exit 
fi

#FUNCIONA , POR CAUSA DO EXIT , mas aindanão percebi o $?

if [ $? -eq 0 ]; then 
echo "O codigo funcionou"  
fi
