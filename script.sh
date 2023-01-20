#!/bin/bash
numero=$1
es_numero=^[0-9]+$
es_romano=^[M/C/D/V/I/X/L]+$

tamanyo=$(echo $numero | wc -c)
tamanyo=$((tamanyo - 1)) #tamanyo=numero de caracteres.
max=$((tamanyo - 1))     #ultimo elemento del string

if [[ $numero =~ $es_numero ]]; then
    if [ $numero -ge 1 -a $numero -le 1999 ]; then
        for i in seq $(0 $max); do
            unoPorUno[i]=${numero:$i:1}
        done

        case $unoPorUno[0] in
        # metodo coneversion / devuelve solucion
        0) ;;

        1)
            $total[0]="M"
            ;;
        esac

        case $unoPorUno[1] in
        # metodo coneversion / devuelve solucion
        0) ;;
        1)
            $total[1]="C"
            ;;
        2)
            $total[1]="CC"
            ;;
        3)
            $total[1]="CCC"
            ;;
        4)
            $total[1]="CD"
            ;;
        5)
            $total[1]="D"
            ;;
        6)
            $total[1]="DC"
            ;;
        7)
            $total[1]="DCC"
            ;;
        8)
            $total[1]="DCCC"
            ;;
        9)
            $total[1]="CM"
            ;;
        esac

        case $unoPorUno[2] in
        # metodo coneversion / devuelve solucion
        0) ;;
        1)
            $total[2]="X"
            ;;
        2)
            $total[2]="XX"
            ;;
        3)
            $total[2]="XXX"
            ;;
        4)
            $total[2]="XL"
            ;;
        5)
            $total[2]="L"
            ;;
        6)
            $total[2]="LX"
            ;;
        7)
            $total[2]="LXX"
            ;;
        8)
            $total[2]="LXXX"
            ;;
        9)
            $total[2]="XC"
            ;;
        esac

        case $unoPorUno[3] in
        # metodo coneversion / devuelve solucion
        0) ;;
        1)
            $total[3]="I"
            ;;
        2)
            $total[3]="II"
            ;;
        3)
            $total[3]="III"
            ;;
        4)
            $total[3]="IV"
            ;;
        5)
            $total[3]="V"
            ;;
        6)
            $total[3]="VI"
            ;;
        7)
            $total[3]="VII"
            ;;
        8)
            $total[3]="VIII"
            ;;
        9)
            $total[3]="IX"
            ;;
        esac
    else
        echo "El numero introducio esta fuera de rango. Debe de estar entre 1 y 1999."
    fi
else
    if [[ $numero =~ $es_romano ]]; then
        echo "funciona perfe"
    else
        echo "Numero no identificado. Debe se numero decimal o romano."
    fi
fi
