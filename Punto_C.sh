#!/bin/bash

# --- Crear grupo y usuario ---
sudo groupadd p1c1_2024_Todos
sudo useradd -m -g p1c1_2024_Todos -s /bin/bash p1c1_2024_u2
echo "p1c1_2024_u2:clave1" | sudo chpasswd

# --- Agregar p1c1_2024_u1 al grupo p1c1_2024_Todos ---
sudo usermod -aG p1c1_2024_Todos p1c1_2024_u1

#!/bin/bash

# grupo y usuario 
sudo groupadd p1c1_2024_Todos
sudo useradd -m -g p1c1_2024_Todos -s /bin/bash p1c1_2024_u2
echo "p1c1_2024_u2:clave1" | sudo chpasswd

#  p1c1_2024_u1 al grupo p1c1_2024_Todos
sudo usermod -aG p1c1_2024_Todos p1c1_2024_u1

# Cambiar grupo de la carpeta /datos y dar permisos de lectura/escritura al grupo 
sudo chown -R :p1c1_2024_Todos /datos
sudo chmod -R 770 /datos

#  Permitir que "otros" solo puedan entrar al directorio pero no ver contenido 
sudo chmod 711 /datos

#  salida de comando 'id' del usuario p1c1_2024_u2 al archivo validar1.txt 
sudo -u p1c1_2024_u2 bash -c 'id >> /datos/validar1.txt'

