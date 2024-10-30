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
* Seleccionamos nuestra MV y click en *Configuración*:
* * <img width="573" alt="image" src="https://github.com/user-attachments/assets/e42ff6a7-3273-4244-a627-fcf8da121392">
* En la sección de *Audio* deshabilitamos el audio:
* * ![image](https://github.com/user-attachments/assets/67401c24-7e34-488b-be1a-142b48597b70)
* En la sección de red, redireccionamos los puertos dando click en *Avanzado* y en *Reenvío de puertos*:
* * <img width="494" alt="image" src="https://github.com/user-attachments/assets/c184da44-529c-4536-a6cd-59f102483958">
* En la ventana que se abre damos click en "+":
*  * <img width="353" alt="image" src="https://github.com/user-attachments/assets/af115451-094c-40f7-bcbc-965ceb3363e3">
* Agregamos la siguiente configuración para poder conectarnos a esta MV mediante la terminal de nuestro Windows 11 y click en *Aceptar*:
* * |Nombre|Protocolo|IP anfitrión|Puerto anfitrión|IP invitado|Puerto invitado|
    |------|---------|------------|----------------|-----------|---------------|
    |SSH|TCP|127.0.0.1|2222||22|
* Click en *Aceptar*
## Arranque de la MV
* Con la MV seleccionada, click en iniciar:
![image](https://github.com/user-attachments/assets/8d42fe33-7f5f-49c3-92f1-ef2ab6bd3ab9)
* Esperamos que arranque y enter en *Graphical install*:
![image](https://github.com/user-attachments/assets/93af096e-4e1d-456e-b070-b213c4b83e0c)
* Elegimos lenguaje, ubicación y configuración del teclado hasta llegar a *Configurar la red*. Para este caso se llamara vagrant la máquina:
![image](https://github.com/user-attachments/assets/bf10c69d-1fb7-4e45-b6f7-74d056fc9836)
* Mismo nombre en dominio:
![image](https://github.com/user-attachments/assets/433d2796-0210-493e-be2a-f1cc702791a0)
* Definimos una contraseña:
![image](https://github.com/user-attachments/assets/106e72ce-3e5d-4794-94e2-23e580ab8e98)
* Por defecto nos creará una cuenta de superusuario, acá debemos definir el nombre de un usuario que usaremos nosotros:
![image](https://github.com/user-attachments/assets/8df7595a-6a66-4542-8b1a-34abbb85dc42)
* Igualmente el nombre de la cuenta (puede ser el mismo del usuario):
![image](https://github.com/user-attachments/assets/5927c76d-d91c-45d6-955d-111abec0d5a9)
* Contraseña para este usuario que no es administrador o superusuario:
![image](https://github.com/user-attachments/assets/e3f704ec-6094-42c8-83dc-1418991bd1c2)
* Elegimos la configuración del reloj y llegaremos al particionado, elegimos la primera opción:
![image](https://github.com/user-attachments/assets/b1748d50-9479-4d13-8a17-74627fa1cdcd)
* Elegimos el disco a particionar, en este caso, es el disco virtual que creamos para la MV:
![image](https://github.com/user-attachments/assets/8b0eb86b-ee75-41d3-9dcb-92079ef0f910)
* En la siguiente ventana elegimos la primera opción:
![image](https://github.com/user-attachments/assets/97af24c7-db56-4ba0-9b25-40794de10d52)
* En la siguiente ventana elegimos la opción "*Finalizar el particionado...*" y *Continuar*:
![image](https://github.com/user-attachments/assets/df1da8e9-942e-4b8e-b02c-7d0e34ab9726)
* Seleccionamos **Sí** y *Continuar*:
![image](https://github.com/user-attachments/assets/97e2d4e6-e8ed-4925-b513-92c8b07d37de)
