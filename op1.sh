#!/bin/bash

echo 
read -p "Introdueix un nom d'usuari: " nomUsuari

apa=`cat usuarios.txt | grep $nomUsuari | wc -l`

if [ $apa -eq 0 ]
    then
        echo "El nom d'usuari introduït ($nomUsuari) no existeix."
    else
        echo "L'usuari $nomUsuari s'ha loguejat $apa vegades."
    fi