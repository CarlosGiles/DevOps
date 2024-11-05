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
/home/vagrant/.pyenv/shims//jupyter
```
5. Dar permisos de ejecución al archivo **startjupyter.sh**:
```bash
chmod u+x startjupyter.sh
```
6. Revisar y confirmar permisos del archivo:
```bash
ls -l startjupyter.sh
```
8. 
