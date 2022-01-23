#!/bin/bash

nome=$(whiptail --title "Entrada de nome do usuario" --inputbox "Qual o nome do OTÁRIO" --fb 10 60 3>&1 1>&2 2>&3)

whiptail --title "Ola puta $nome" --msgbox "NÃO TEM NADA AQUI" --fb 10 50


if whiptail --title "COMI A TUA MÃE" --yes-button "SIM OTARIO" --no-button "NÃO VAI TE FUDER" --yesno "Diz a verdade !" --fb 10 70;then

whiptail --msgbox "E o proximo que vou fuder vais ser TU $nome! /O status de saída é $?" --fb 10 50


else

whiptail --msgbox "Mentiroso do caralho/O status de saída é $?" --fb 10 50
fi

whiptil --caleder 10 50
