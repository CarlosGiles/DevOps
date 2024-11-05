# Jupyter y Jupyter Lab
Jupyter es una interfaz para programar scripts de python en celdas individuales que combina celdas de markdown. Jupyter Lab es la versión web de Jupyter
## Instalar Jupyter
Actualmente nuestro directorio en ```vagrant@vagrant:$``` o ```vagrant@debian:$``` es:
```
home/
    |_jupyter
            |_Dir oculto de python con pyenv
```
Para instalar Jupyter:
* Utilizamos la siguiente linea de comando para instalar Jupyter en el directorio *"jupyter"*:
```bash
sudo apt install nodejs
cd jupyter
pip install jupyter
```
![image](https://github.com/user-attachments/assets/6aee8e0d-de74-466c-a3a3-462a197493d4)
## Jupyter Lab
1. Configurar el servidor de Jupyter: ```vagrant@debian:~/jupyter$ jupyter server --generate-config```
2. Generar password (el mismo que hemos usado) para el server: ```vagrant@debian:~/jupyter$ jupyter server password```
3. Verificar la configuración generada: ```jupyter server --show-config```
4. Generar configuración para Jupyter Lab: ```jupyter lab --generate-config```
5. Crear nueva regla de direccionamiento en la MV:

|Nombre|Protocolo|IP anfitrión|Puerto anfitrión|IP invitado|Puerto invitado|
|------|---------|------------|----------------|-----------|---------------|
|jupyter|TCP|127.0.0.1|8888||8888|

![image](https://github.com/user-attachments/assets/7805c2b5-62bb-4cdd-be47-3f84af11a959)

6. Iniciar Jupyter Lab ```jupyter lab --ip 0.0.0.0``` y se abrirá un navegador de terminal:
![image](https://github.com/user-attachments/assets/4992050c-be7d-4d58-b335-98ad663132f3)
Ejecutar mejor: ```jupyter lab --no-browser --ip 0.0.0.0```
![image](https://github.com/user-attachments/assets/88cc0ffe-acc8-4338-822e-89ed729c21a9)

7. Abrimos el navegador y entramos a ```http://127.0.0.1:8888/lab```:

![image](https://github.com/user-attachments/assets/9e7c84ee-142e-46d2-9df1-b2cc23ebf0ba)


9. Instalar kernel de bash: detenemos la ejecución de Jupyter Lab con ```ctrl + C```, ```pip install bash_kernel``` y al terminar la descarga ```python -m bash_kernel.install```. Volvemos a ejecutar Jupyter lab ```jupyter lab --no-browser --ip 0.0.0.0``` y veremos la terminal de bash:
![image](https://github.com/user-attachments/assets/731cf183-30c1-46c3-915c-3567a3c777ce)

**CON ESTO TENEMOS LA CONFIGURACIÓN NECESARIA PARA EJECUTAR JUPYTER LAB EN DEBIAN DESDE NUESTRA TERMINAL Y ENTRANDO POR EL NAVEGADOR**

Aunque estamos usando nuestro navegador para entrar a Juputer Lab, Jupyter Lab se está sirviendo desde nuestra máquina virtual con Debian.
