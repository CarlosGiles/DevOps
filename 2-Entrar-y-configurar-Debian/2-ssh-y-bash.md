# SSH y BASH
SSH es un protocolo de red para comunicarnos desde un dispositivo (cliente) a otro (servidor). En este caso, utilizaremos la terminal de comandos ya sea bash o powershell en nuestro sistema Windows para conectarnos a la MV de Debian mediante dicho protocolo.
SSH es un protocolo muy usado ya que la comunicación es cifrada. Por ejemplo, es el protocolo que usa **Git** para conectarnos a un repositorio remoto.
## Conexión SSH
Para conectarnos desde nuestro equipo a la máquina virtual (MV), debemos:
1. Abrir VirtualBox e iniciar nuestra MV con la redirección de puertos lista (previamente configurada).
2. Abrir PowerShell en nuestro equipo de Windows e introducir la siguiente linea de comandos: ```ssh vagrant@127.0.0.1 -p 2222```
* **ssh** indica el protocolo a utilizar
* **vagrant** indica el usuario al que nos conectamos
* **@127.0.0.1** es el host de red
* **-p** indica que la conexión será a un puerto
* **2222** el puerto
* ![image](https://github.com/user-attachments/assets/3cb7ec37-238d-4452-b9dd-af22ebfdc091)
* <img width="720" alt="image" src="https://github.com/user-attachments/assets/2713daf6-83e3-4c13-b789-080af6b7b2b0">

**Ahora nuestro PowerShell o terminal se conectó a la MV por medio de SSH**
<img width="377" alt="image" src="https://github.com/user-attachments/assets/e5ea08c3-05ba-49ca-8965-3b8fd6028d02">
