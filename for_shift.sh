#!/bin/bash


while [ -n "$1" ];do
	for i in $(seq 10 1);do
	echo $i
	done
shift
done
