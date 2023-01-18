#!/bin/bash
numero=$1
es_numero=^[0-9]+$
es_romano=^[M/C/D/V/I/X/L]+$

tamanyo=$(echo $numero | wc -c)
tamanyo=$((tamanyo - 1))
max=$((tamanyo - 1))

if [[ $numero =~ $es_numero ]]; then
    if [ $numero -ge 1 -a $numero -le 1999 ]; then
        echo "funciona bien"
    else
        echo "El numero introducio esta fuera de rango. Debe de estar entre 1 y 1999."
    fi
else
    if [[ $numero =~ $es_romano ]]; then
        echo "funciona perfe"
    else
        echo "No es romano."
    fi
fi

for i in seq 0 $max; do
    echo "${numero:$i:1}"
    sleep 0.2s
done
