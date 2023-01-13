#!/bin/bash

read -p "Introdueix un mes: " mes

apaMes=`cat usuarios.txt | grep $mes | wc -l`


if [ $apaMes -eq 0 ]
    then
        echo "El mes de $mes no hi han connexions registrades."
    else
        echo "Dies del mes $mes amb connexions: "
        
        for i in `seq 1 $apaMes`
        do
        dia=`cat usuarios.txt|grep $mes| head -n$i | tail -1| awk '{print $2}'`
        echo "$dia"
        done

    fi