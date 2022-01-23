#!/bin/bash

clear
#sleep 1
echo    "    __        _______ _     ____ ___  __  __ _____   _____ ___ "
echo -e " \033[0;31m  \ \      / / ____| |   / ___/ _ \|  \/  | ____| |_   _/ _ \  \033[0m"
echo    "    \ \ /\ / /|  _| | |  | |  | | | | |\/| |  _|     | || | | | "
#sleep 1
echo -e " \033[0;31m    \ V  V / | |___| |__| |__| |_| | |  | | |___    | || |_| | \033[0m"
echo    "     \_/\_/  |_____|_____\____\___/|_|  |_|_____|   |_| \___/  "
#sleep 1
echo -e "\033[0;31m               ____  _____ ____    ____  _____ ____  \033[0m"
echo -e "\033[0;31m             |  _ \| ____|  _ \  / ___|| ____/ ___| \033[0m"
echo    "             | | | |  _| | | | | \___ \|  _|| |    "
#sleep 1
echo    "             | |_| | |___| |_| |  ___) | |__| |___ "
echo -e "\033[0;31m            |____/|_____|____/  |____/|_____\____|\033[0m"
echo ""                                  
#sleep 1
echo "                            ░░░░░░░    "                                                     
echo "                       ░░░░░░░░░░░░░░░░░"
echo "                     │░░░░░░░░░░░░░░░░░░░│"
echo "                      │░░░░░░░░░░░░░░░░░░░│"
echo "                    ░└┐░░░░░░░░░░░░░░░░░┌┘░"
#sleep 1
echo "                    ░░└┐░░░░░░░░░░░░░░░┌┘░░"
echo -e "                    ░░┌┘\033[0;31m▄▄▄▄▄░░░░░▄▄▄▄▄\033[0m└┐░░"
echo -e "                     ░│\033[0;31m██████▌░░░▐██████\033[0m│░"
echo -e "                    ░│▐\033[0;31m███▀▀░░▄░░▀▀███▌\033[0m│░"
echo -e "                     ─┘░░░░░░░\033[0;31m▐█▌\033[0m░░░░░░░└─"
#sleep 1
echo -e "                     ░░░   ▓░░\033[0;31m▀█▀\033[0m░░▓   ░░░"
echo "                      ─┘    ░░░░░░░   └─"
echo -e "                        ░░  \033[0;31m─┬┬┬┬┬┬┬─ \033[0m ░░"
echo -e "                       ░░░ \033[0;31m┬┼┼┼┼┼┼┼┬ \033[0m░░░"
echo -e "                        ░░░\033[0;31m└┴┴┴┴┴┴┴┘\033[0m░░░"
echo "                         ░░░░░░░░░░░"
echo
echo


function LS {
echo "Quer guardar dentro de um arquivo [s]/[n]:"
 read arquivo

if [ $arquivo = "s" ]; then
echo "Indique o nome do arquivo (não é presico da extensao):"
read nome

sleep 1 

echo -n "Inidique o caminho do diretorio (/diretorio/) :"
 read caminho

sleep 1

ls $caminho >> $nome.txt
echo " O arquivo $nome.txt foi guardado em :"
pwd

sleep 3
clear

elif [ $arquivo = "n" ]; then
echo -n "Inidique o caminho do diretorio :"
 read caminho

sleep 1
clear

echo "O contiodo do diretorio $caminho é :"
ls $caminho
fi
}

CD () {
echo -n "Indique um caminho :"
read caminho

clear
echo "Voce esta em :"
pwd

cd $caminho
echo "E agora em :"
pwd
}

IP () {
echo "Qual interface usar [1]eth0 [2]Wlan0 :"
read opcao
	echo "O nome da sua rede é :" | tr '\n' ' '
	iwconfig wlan0 | grep "ESSID" | cut -d ":" -f2
	
	case $opcao in
	1)
	echo "O seu indereço IP é :" | tr '\n' ' '
	ifconfig eth0 | grep "inet" | grep -v "inet6" | cut -d " " -f10 
	#
	echo "A sua máscara é :" | tr '\n' ' '
        ifconfig eth0 | grep "inet" | grep -v "inet6" | cut -d " " -f13 
	;;
	2)
	echo "O seu indereço IP é :" | tr '\n' ' '
	ifconfig wlan0| grep "inet" | grep -v "inet6" | cut -d " " -f10 
	
	echo "A sua máscara é :" | tr '\n' ' '
        ifconfig wlan0 | grep "inet" | grep -v "inet6" | cut -d " " -f13 
	;;
	esac
}

Usu () {
clear


echo "[1]ADICIONAR USÚARIO"
echo "[2]REMOVER USÚARIO"
echo "[3]BLOQUEAR USÚARIO"
echo "[4]DESBLOQUEAR USÚARIO"
echo "[5]ALTERAR PASSWORD"
echo "[6]"
read opcao

case $opcao in
1)
clear
echo "São estes os usuarios existentes :" 
cat /etc/shadow | tail | cut -d ":" -f1

echo "Qual o nome do usuario :"
read nome

 adduser $nome

echo "Deseija adicionar $nome a um grupo [s] [n]: "
read grupo
if [ $grupo == "s" ];then
	echo "Criar grupo [1] ou adicionar a grupo [2]:"
	read opcao
		if [ $opcao -eq 1 ];then
		clear	
		   echo "Os últimos 10 grupos criados são :"
		   cat /etc/group | tail | cut -d ":" -f1
		 			
			echo "Qual o nome do grupo :"
	 		read nome_grupo
		   
			groupadd $nome_grupo
			gpasswd -a $nome $nome_grupo
			
			echo "Adicionado com sucesso !"
			cat /etc/group | grep $nome
		elif [ $opcao -eq 2 ];then
			echo "Os 10 últimos grupos criados são :"			
			cat /etc/group | tail | cut -d ":" -f1
			echo "Qual o nome do grupo :"
			read nome_grupo
  			while [ -e $nome_grupo ];do				
			gpasswd -a $nome $nome_grupo
		  cat /etc/group | tail | cut -d ":" -f1	
			exit			
			done
			
		fi
elif [ $grupo == "n" ]; then
	exit	
fi
;;
2)
clear 
echo "Os 10 ultimos usuarios criados foram :"
cat /etc/shadow | tail | cut -d ":" -f1
echo "Qual o nome do usuario :"
 read nome

userdel $nome

echo "O usuario $nome foi removido com sucesso !"
cat /etc/shadow | tail | cut -d ":" -f1
;;
3)
echo "Os 10 ultimos usuarios criados foram :"
cat /etc/shadow | tail | cut -d ":" -f1

echo "Qual usuario bloquear:"
read nome
passwd -l $nome
echo "O usuario $nome foi bloqueado !"
exit
;;
4)
echo "Os 10 ultimos usuarios criados foram :"
cat /etc/shadow | tail | cut -d ":" -f1

echo "Qual usuario que quer desbloquear :"
passwd -u $nome
echo "O usuario $nome foi desbloqueado comm sucesso !"
;;
5)
echo "Os 10 ultimos usuarios criados foram :"
cat /etc/shadow | tail | cut -d ":" -f1

echo "Qual o nome do usuario :"
read nome
passwd $nome
echo "Mudada com sucesso !"
;;
6)
exit
;;
esac
}


#while true;do
echo "Indique o seu nome : "
read usu_nome
echo "[1]LS 
[2]CD 
[3]IP
[4]DEFINIÇÕES SOBRE USÚARIOS
[5]EXIT"
read opcao
case $opcao in
1)
LS
;;

2)
CD
;;

3)
IP
;;
4)
Usu
;;
5)
clear
figlet ADEUS ${usu_nome^^}
sleep 3
clear

#break

esac






