#!/bin/bash

# Paso 1: Leer la variable GITHUB_USER
read -p "Ingresa tu nombre de usuario de GitHub: " GITHUB_USER

# Paso 2: Consultar la URL y obtener información del usuario
API_URL="https://api.github.com/users/$GITHUB_USER"
response=$(curl -s $API_URL)

# Paso 3: Imprimir el mensaje con la información del usuario
github_user=$(echo $response | jq -r '.login')
id=$(echo $response | jq -r '.id')
created_at=$(echo $response | jq -r '.created_at')
echo "Hola $github_user. User ID: $id. Cuenta creada el: $created_at."

# Paso 4: Crear la carpeta con la fecha de la consulta
folder_path="/tmp/$(date +'%Y-%m-%d')"
mkdir -p "$folder_path"

# Paso 5: Crear el archivo de registro en la carpeta con la consulta
log_file="$folder_path/saludos.log"
echo "Hola $github_user. User ID: $id. Cuenta creada el: $created_at." >> $log_file

# Paso 6: Crear el cronjob para que el script se ejecute cada 5 minutos
(crontab -l ; echo "*/5 * * * * $PWD/Documentos/so1_actividades_201801119/actividad2/script.sh") | crontab -