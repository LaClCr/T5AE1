#!/bin/bash 

read -p "Introdueix el nom del usuari per a consultar l'última connexió: " nom 

cantLogin=`cat usuarios.txt | grep $nom | wc -l` 
max=0 
mesmax="" 

for j in `seq 1 $cantLogin`  
do  
    mes=`cat usuarios.txt | grep $nom | head -n$j | tail -1| awk '{print $3}'` 
    contador=0  

    for i in enero febrero marzo abril mayo junio julio agosto septiembre octubre noviembre diciembre 
    do 
        contador=$((contador + 1)) 

        if [ $i = $mes ] 
        then 
            if [ $max -lt $contador ] 
            then  

                    max=$contador 
                    mesmax=$i 
            fi 
        fi 
    done    
done 

dia=`cat usuarios.txt | grep $nom | grep $mesmax | awk '{print $2}'`

echo "$nom es va connectar per última vegada el $dia de $mesmax." 
