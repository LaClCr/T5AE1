#!/bin/bash
read -p "Introdueix un nom d'usuari: " user
coinci=`cat usuarios.txt |grep $user| wc -l`
numMes=0

if [ coinci -eq 0 ]
then 
    echo "No hi han registres de login per a aquest usuari."
else    
    echo " "
    echo "Logins de $user:"

    for i in `seq 1 $coinci`
    do
    fecha=`cat usuarios.txt|grep $user| head -n$i | tail -1| awk '{print $2 $3}'`   

    echo "$fecha"

    done
fi
