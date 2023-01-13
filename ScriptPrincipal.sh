#!/bin/bash
opcion=0

while [ $opcion -ne "5" ]
do
    echo ""
    echo "-------------MENU D'OPCIONS------------------"
    echo "OPERACIÓ 1: BUSQUEDA DE NOMBRE DE CONNEXIONS PER NOM"
    echo "OPERACIÓ 2: BUSQUEDA DE CONNEXIONS PER MES"
    echo "OPERACIÓ 3: BUSQUEDA DE CONNEXIONS PER DATA"
    echo "OPERACIÓ 4: CONSULTA ÚLTIMA CONNEXIÓ"
    echo "OPERACIÓ 5: EIXIDA DEL PROGRAMA"
    echo "----------------------------------------------"
    echo " "
    read -p "Selecciona una opció (1..5): " opcion
    echo " "

    case $opcion in 
    "1")
    ./op1.sh
    ;;
    "2")
    ./op2.sh
    ;;
    "3")
    ./op3.sh
    ;;
    "4")
    ./op4.sh
    ;;
    "5")
    echo "Fi del programa."
    break
    ;;
    esac

done