# Instalación de Jupyter en la MV del servidor Debian 
Como estamos trabajando en un entorno controlado en el que contamos con dos máquinas, una física y una virtual, se vuelve complicado tener que maneobrar entre una y otra debido a las limitaciones que nos da VirtualBox al interactuar con nuestro hardware físico.
Por lo tanto, utilizar la terminal de nuestro sistema principal de Windows (o Ubuntu para algunas ilustraciones) conectada a la MV por medio de ssh para realizar los cambios en dicha máquina virtual, nos facilitará las cosas.
## PYENV
Con ```pyenv``` en Linux podemos instalar diferentes versiones de Python y utilizarlas por separado a elección según se requiera.
Una vez conectados desde nuestra terminal o powershell a la MV, todo lo que hagamos se estará realizando sobre la MV y no en nuestro sistema.
* Para la instalación de python y pyenv en la MV debemos tener **Git**: ```sudo apt install git```
![image](https://github.com/user-attachments/assets/53f72fd8-3a00-4586-9f0b-d58bddd6cee0)
* Instalamos python clonando el repositorio con la siguiente linea de comandos:

```git clone https://github.com/pyenv/pyenv.git ~/.pyenv```
![image](https://github.com/user-attachments/assets/ee1c520a-b2c7-4933-b9fc-5db96141ff1c)
El punto en ```/.pyenv``` indica que será un directorio oculto.
* Para ver el directorio oculto creado usamos: ```ls -al```
![image](https://github.com/user-attachments/assets/a125622d-7529-41b7-a29e-d187ea6b45f5)
* Configurar la variable de entorno para **pyenv** modificando el archivo ```bashrc``` y que se reconozca ```pyenv``` como un comando, introducimos lo siguiente en la terminal:

```bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
```
![image](https://github.com/user-attachments/assets/bf71d68b-441d-4f00-9f7f-4844db58b127)
* Para que se apliquen los cambios, volvemos a cargar el archivo: ```source .bashrc```
![image](https://github.com/user-attachments/assets/dcb5ef5f-5cd8-4995-b081-daa75cf4bd94)
**Ahora tenemos instalado y configurado PYENV en la MV, por lo tanto el comando ```pyenv``` funciona en la terminal y pdremos instalar más de una versión de Python.**
## Dependencias necesarias
Para poder instalar Python necesitamos ciertas dependencias que no tenemos por default en el sistema.
```bash
sudo apt update; sudo apt install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl git \
libncursesw5-dev xz-utils tk-dev libxmlsec1-dev libffi-dev liblzma-dev
```
![image](https://github.com/user-attachments/assets/57781c35-6b9a-49ad-b5a0-268c61f2d69e)
## Instalación de Python en nuestro PYENV
* Para saber las versiones disponibles ```pyenv install --list```
![image](https://github.com/user-attachments/assets/f399e6d6-828c-4e69-8282-d90e98c509a6)
* Instalamos la siguiente versión ```pyenv install 3.11.10``` (acá cambia el dominio de vagrant a debian debido a que tuve que hacer otra MV)
![image](https://github.com/user-attachments/assets/7b29e91f-626f-4104-a4db-2d7d0acd2fb7)
## Activación de Python en nuestra sesión
Las versiones de Python instaladas con **pyenv** deben ser activadas en un directorio específico en el que se usarán.
* Crear directorio, entrar al directorio y activar python:
```bash
makdir jupyter
cd jupyter
pyenv local 3.11.10
```
![image](https://github.com/user-attachments/assets/6b304359-fe4e-4ad2-a0c4-c6b11a2a8592)
* ahora si tecleamos ```python``` dentro de este directorio, se reconocerá el comando y se abrirá en interprete:
![image](https://github.com/user-attachments/assets/672723c3-85fc-4d7b-92a1-8463555e2ec5)
