#!/bin/bash

#Ejercicio 1

{
    cat /proc/cpuinfo | grep "model" 
} || {
    echo "Error en el ejercicio 1"
}

#Ejercicio 2

{
    cat /proc/cpuinfo | grep "model" | wc -l 
} || {
    echo "Error en el ejercicio 2"
}

#Ejercicio 3

{
    wget -O santi_in_wonderland.txt https://www.gutenberg.org/files/11/11-0.txt && sed -i 's/Alice/Santi/g' "santi_in_wonderland.txt" 
} || {
    echo "Error en el ejercicio 3"
}

#Ejercicio 4

{
    sort -n -k5,5 -o weather_cordoba_sort.in weather_cordoba.in && cut -d' ' -f1-3 weather_cordoba_sort.in | head -n 1 && cut -d' ' -f1-3 weather_cordoba_sort.in | tail -n 1 
} || {
    echo "Error en el ejercicio 4"
}

#Ejercicio 5

{
    sort -n -k3,3 atpplayers.in
} || {
    echo "Error en el ejercicio 5"
}

#Ejercicio 6

{
    awk '{$0 = $0 OFS ($7 - $8)} 1' superliga.in > superliga_sort.in && sort -k2,2 superliga_sort.in  
} || {
    echo "Error en el ejercicio 6"
}

#Ejercicio 7

{
    ip link show | grep ether 
} || {
    echo "Error en el ejercicio 7"
}

#Ejercicio 8.a

{
    mkdir "Nombre de la serie" && cd "Nombre de la serie" && for i in {1..10}; do touch "fma_S01E${i}_es.srt"; done 
} || {
    echo "Error en el ejercicio 8-a"
}

#Ejercicio 8.b

{
    for f in *_es*; do mv $f ${f%_es.srt}.srt; done 
} || {
    echo "Error en el ejercicio 8-b"
}

