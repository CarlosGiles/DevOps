# Uso del sistema operativo de linea de comandos Debian 12
1. Login
2. Permisos de usuario y superusuario
3. 
## Login
Al iniciar la MV y elegir *Debian GNU/Linux* en el **GRUB**, estaremos entrando al sistema de Debian 12 que hemos creado como servidor.
* Nos aparecerá esta pantalla en la que debemos iniciar sesión con nuestra cuenta de usuario y contraseña creadas en la instalación, recordando que es un usuario no root.
![image](https://github.com/user-attachments/assets/3aa029d5-afae-4e05-9c2a-e171ae7c481a)

* Introducir usuario y contraseña. La contraseña no se verá al escribirla.
![image](https://github.com/user-attachments/assets/fd4921ad-926b-4187-a397-2b5fa3909606)
* Al entrar correctamente, veremos en la terminal nuestro usuario y dominio creados anteriormente: ```vagrant@vagrant:~$```
![image](https://github.com/user-attachments/assets/4cb6b460-c7bf-4829-827a-ec63077748e1)
## Permisos de superusuario
Para obtener permisos adicionales en nuestro usuario base, debemos seguir el siguiente proceso:
1. Cambiar al usuario root creado por defecto en la instalación.
2. Actualizar paquetes del sistema desde el usuario root.
3. Modificar el archivo **sudoers** que contiene la configuración de usuarios.
* Cambiamos a usuario root, nos pedirá contraseña: ```su - root```
<img width="535" alt="image" src="https://github.com/user-attachments/assets/a01cb5e6-8624-4503-a45d-6b77fb6f8c2c">

* Revisar actualizaciones de paquetes con ```apt update``` y aplicar actualizaciones con ```apt upgrade```:
![image](https://github.com/user-attachments/assets/d7c10409-8c20-442c-bac9-acbefd87924b)
* Instalar paquete **sudo** ```apt install sudo```:
![image](https://github.com/user-attachments/assets/fd6ed9bf-22ac-4517-b6f7-eca99bc96bac)
* Entrar al archivo **sudoers** con el comenado ```visudo```y agregar la siguiente linea de código en donde dice ```#user privilege specification```: ```vagrant ALL=(ALL) NOPASSWD:ALL```
![image](https://github.com/user-attachments/assets/e9c256ca-3828-4bcb-9d48-2545e6e01ae2)
* Presionamos ```ctrl + O``` para guardar, "enter" para confirmar el mismo nombre del archivo y ```ctrl + X``` para salir y regresar a la terminal de comandos:
<img width="383" alt="image" src="https://github.com/user-attachments/assets/66a76455-0c85-4351-8c24-c8cbe20efbfa">

* Con el comando ```su - vagrant``` regresamos a nuestro usuario base:
![image](https://github.com/user-attachments/assets/9832a021-7a16-494c-9013-819fd54f1e45)

**Ahora nuestro usuario base tiene los permisos necesarios para trabajar en lo que necesitamos**
