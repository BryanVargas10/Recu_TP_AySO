#!/bin/bash

#  carpeta
mkdir -p ~/Punto_E

#  memoria RAM total
grep MemTotal /proc/meminfo > ~/Punto_E/Filtro_basico.txt

#  modelo y frecuencia del CPU
grep -m 1 "model name" /proc/cpuinfo >> ~/Punto_E/Filtro_basico.txt
