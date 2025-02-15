# Crear servicio para inicio automático
Objetivo: entrar a Jupyter Lab (web) sin necesidad de conectarnos a la MV por SSH y ejecutar jupyter lab manualmente.
En lugar de ello, solo será necesario iniciar la MV y abrir el explorador en la dirección indicada dentro de nuestro sistema principal.
1. Si ya tenemos el servidor de Jupyter Lab ejecutandose, detenemos con ```ctrl + C```
2. Crear el archivo **.sh** en la raíz:
```
cd ..
nano startjupyter.sh
```
3. Escribimos lo siguiente en el archivo:
```sh
#!/bin/bash

cd /home/vagrant/jupyter

/home/vagrant/.pyenv/versions/3.11.10/bin/jupyter lab --no-browser --ip 0.0.0.0
```
4. Con el comando ```which``` podemos solicitar información sobre un programa o comando: ```which jupyter```:
```terminal
/home/vagrant/.pyenv/shims/jupyter
```
Ahora sabemos que nuestro binario (como si fuera el .exe) que ejecuta jupyter está en esa ruta pero es una ruta interna del pyenv, la real la es la que tenemos en el archivo del paso 3.

5. Dar permisos de ejecución al archivo **startjupyter.sh**:
```bash
chmod u+x startjupyter.sh
```
6. Revisar y confirmar permisos del archivo:
```bash
ls -l startjupyter.sh
```
7. Crear archivo de configuración del servicio: la ruta para los archivos de configuración de servicios propios del sistema están en la ruta: ```/etc/systemd/system/```
```bash
sudo nano jupyterlab.service
```
8. Escribimos lo siguiente:
```bash
[Unit]
Description = servicio jupyter lab

[Service]
User=vagrant
Group=vagrant
Environment=PATH=/home/vagrant/.pyenv/versions/3.11.0/bin:/home/vagrant/.pyenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
ExecStart=/home/vagrant/startjupyter.sh
Restart=always
RestartSec=5
KillSignal=SIGQUIT
StandardError=syslog

[Install]
WantedBy=multi-user.target
```
9. Ejecutar servicio: si el servicio ya existía y lo detuvimos para hacer cambios en el archivo de configuración de servicio ejecutamos ```sudo systemctl daemon-reload``` para recargar los cambios y lo ejecutamos nuevamente. En este caso creamos recién el archivo, entonces lo habilitamos con ```sudo systemctl enable jupyterlab.service```. Arrancamos el servicio con ```systemctl start jupyterlab.service```.
10. Podemos ver el status del servicio con ```systemctl status jupyterlab.service```. Salimos de la visualización de status con la letra "q".
11. Detener un servicio: con ```sudo systemctl stop jupyterlab.service``` y ```sudo shutdown -h now``` para apagar la MV.

**EN ESTE PUNTO TENEMOS CONFIGURADA UNA APP COMO SERVICIO.**
