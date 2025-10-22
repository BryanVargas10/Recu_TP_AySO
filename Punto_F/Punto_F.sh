#!/bin/bash

mkdir -p Punto_F

ip_publica=$(curl -s ifconfig.me)

cpu_info=$(lscpu | grep "Model name" | awk -F: '{print $2}' | sed 's/^[ \t]*//')

modelo=$(echo "$cpu_info" | awk '{print $2}')
frecuencia=$(echo "$cpu_info" | grep -o "[0-9.]*GHz")

echo "Mi ip publica es: $ip_publica" > Punto_F/Filtro_Avanzado.txt
echo "CPU Modelo: $modelo Frecuencia: $frecuencia" >> Punto_F/Filtro_Avanzado.txt
