#!/bin/bash

# Movernos al directorio
cd /home/vagrant/jupyter/DevOps/8-Practica-1/imagenes

# Generar un número aleatorio para el nombre del archivo
NUM_ALEATORIO=$((RANDOM))

# Nombre aleatorio de la imagen
NOMBRE_IMAGEN="wallpaper-${NUM_ALEATORIO}.jpg"

# URL
URL="https://unsplash.it/1920/1080//?random"

# LOG para descarga
LOG_DESCARGA="descarga.log"

# Descarga y almacenar resultado
wget -O "$NOMBRE_IMAGEN" "$URL" >> "$LOG_DESCARGA" 2>&1

# LOG para listar descargas
LOG_IMAGENES="imagenes_descargadas.log"

# Si no existe crear archivo log
tuch "$LOG_IMAGENES"

# Si no existe añadimos el nombre del archivo al log
if ! grep -Fxq "$NOMBRE_IMAGEN" "LOG_IMAGENES" ; then
        echo "$NOMBRE_IMAGEN" >> "$LOG_IMAGENES"
fi