#!/bin/bash
numero=$1
es_numero=^[0-9]+$
tamanyo=`echo $numero | wc -c`
tamanyo=$((tamanyo-1))
max=$((tamanyo-1))

if [[ $numero =~ $es_numero ]]; then
    if [ $numero -ge 1 -a $numero -le 1999 ]; then
        echo "funciona bien"
    else
        echo "El numero introducio esta fuera de rango. Debe de estar entre 1 y 1999."
    fi
fi
