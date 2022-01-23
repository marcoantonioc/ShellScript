#!/bin/bash
clear
echo "Indique a url do site :"
read site

echo "[1]Tudo (IPv4,Ipv6,NS,PTR)"
echo "[2]IPv4"
echo "[3]IPv6"
echo "NS"
echo "PTR"
read opcao

case $opcao in
2)
host $site
;;
3)
host AAAA $site
;;
esac
exit
