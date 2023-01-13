#!/bin/bash

read -p "Introdueix un mes: " mes
read -p "Introdueix un dia d'aquest mes: " dia

data=$dia.$mes

coincidencias=`cat usuarios.txt | grep $data | wc -l`

if [ $coincidencias -eq 0 ]
    then
        echo "En la data seleccionada no hagueren connexions."
    else
        echo ""
        echo "Usuaris connectats el $dia de $mes:"
        
        for i in `seq 1 $coincidencias`
        do
            user=`cat usuarios.txt|grep $data| head -n$i | tail -1| awk '{print $1}'`
            echo "$user"
        done

    fi
