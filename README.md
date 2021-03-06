Paises
===
### 馃搵 Requisitos
```
Versi贸n de Rails 
5.0.7.2

Versi贸n de Ruby
2.5.5
```

##### 馃搵 Instalar JavaScript Runtime.
Algunas caracter铆sticas de Rails dependen de una ejecuci贸n de JavaScript, se instalara Node.js para proporcionar esta funcionalidad.

| Debian o Ubuntu | CentOS, Fedora, or RHEL |  
| --- | --- |
| apt-get | yum |

```
$ cd /tmp
$ \curl -sSL https://deb.nodesource.com/setup_6.x -o nodejs.sh
$ cat nodejs.sh
```
* Instalar el repositorio de NodeSource Node.js v6.x
```
$ cat /tmp/nodejs.sh | sudo -E bash -
```
* Una vez que se completa la instalaci贸n, usar **apt-get** para instalar **Node.js.**
```
$ sudo apt-get install -y nodejs
```
### 馃洜 Instalaci贸n de la Api.

**V谩lidar requerimientos que se encuentran en el anexo 1  antes de comenzar con la configuraci贸n e instalaci贸n de la Api.**

**Se deben de configurar los parametros de acesso a mysql en el archivo database.yml (host,username,password,port), ubicado en api/config(database.yml**

**Se deben de ejecutar los siguientes comandos:**

* Crear la base de datos
```
$ rake db:create
```
* Crear las tablas
```
$ rake db:migrate
```
* Insertar los registros
```
$ rake db:seed
```
* Ejecutar la Api con rails s -p puerto -b ip, ejemplo:
```
$ rails s -p 4000 -b 192.168.0.1
```
**Probar acceso a la Api con postman:**
* Lista de paises con sus estados:
```
get
http://192.168.0.1:4000/paises/v1/paises
```
* Buscar un pais con sus estados:
```
get
http://192.168.0.1:4000/paises/v1/paises/118
```