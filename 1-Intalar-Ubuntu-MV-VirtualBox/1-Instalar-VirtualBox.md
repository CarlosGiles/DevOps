# VirtualBox
Es un programa para virtualizar máqunias con un determinado sistema operativo (dentro de tu sistema operativo). Puedes [descargar](https://www.oracle.com/virtualization/technologies/vm/downloads/virtualbox-downloads.html) el software.
## Debian 12
VirtualBox necesita un sistema operativo para esa máquina virtual, en este caso, instalaremos **Debian 12** disponible [aquí](https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-12.7.0-amd64-netinst.iso). Debian es un sistema operativo con alta compatibilidad de aplicaciones, tales como Docker que lo usaremos más adelante.
## Instalando VirtualBox
Una vez descargado el archivo de instalación en nuestra computadora con Windows 11:
1. Ejecutamos el archivo y damos a *Next* hasta tener la aplicación instalada:
![image](https://github.com/user-attachments/assets/83bd88a2-a314-4c01-ba3d-eaa5542f186e)
2. Buscar el programa y abrirlo:
![image](https://github.com/user-attachments/assets/2cc9ae74-450e-4ec6-a75c-73d84ac2c57c)
## Instalación de Debian12 en máquina virtual con VirtualBox
Ya con VirtualBox abierto:
1. Click en ¨Nueva¨:
![image](https://github.com/user-attachments/assets/02d5668e-8670-4c4d-8aaf-79e011d1bee5)
2. Habilitar *Modo experto* si no lo tiene habilitado en la ventana que se abre:
   ![image](https://github.com/user-attachments/assets/aa215978-339e-43b4-8167-4feabec4e4c4)
3. En esta ventana como *Modo Experto* elegimos nombre de la MV, la imagen iso descargada de Debian y check en *Omitir instalación desatendida*:
   ![image](https://github.com/user-attachments/assets/b5abfa7a-a220-44a3-adc0-d000013cf80a)
5. Click en la pestaña de **hardware** y configuramos la memoria y CPU's tal como aparece:
   ![image](https://github.com/user-attachments/assets/fd995893-b31d-4bf4-8076-dcfdaedacd33)
6. En la sección de **Disco duro** configuramos 2GB y el tipo de disco **VMDK** y click en *Terminar*:
   ![image](https://github.com/user-attachments/assets/91c4b8a6-14ca-42bd-90b6-49533eb0d0ce)
**¡Ahora está crearda la máquina virtual (MV)!:**
![image](https://github.com/user-attachments/assets/37af50bf-4c6b-46a7-987a-20ef1400334d)
## Configuración de red y audio de la MV
