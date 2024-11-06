# Linux
En Linux, sin importar la distribución, **FHS** (File System Standar) es el estándar de archivos y directorios de Red Hat.

## Organización FHS
La partición principal es la raíz del sistema de archivos del sistema operativo. Los principales directorios en esta ubicación son:
* ```bin``` es el enlace simbólico a ```usr/bin```, funciona como acceso directo o atajo. Al consultar los archivos con ```ls -l```en un directorio que contiene enlaces simbólicos, estos aparecen con "l" al inicio.
* ```dev``` contiene una representación de dispositivos conectados.
* ```etc``` contiene archivos de configuración de servicios y aplicaciones.
* ```mnt``` contiene los dispositivos internos.
* ```media``` contiene dispositivos externos.

Las demás carpetas en este directorio pueden ser consultadas en la [documentación oficial](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/4/html/reference_guide/s1-filesystem-fhs).

[Tutorial explicación](https://privatebin.daliaempower.com/?4e19acf8acc07e10#GD6ZXBBaB3KjzK354FYCRq9eRXiscYxaSRGanH5J5BMB)