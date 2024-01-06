<img src="img/header.jpg?raw=true" alt="Header Logo" width="100%" />

# :star: Quick reference
* **Maintained by**: Jhoncy Tech - JhonnyGO

---
## :sparkler: <u>Descripción</u>
El siguiente repositorio se ha realizado con fines educativos, tiene como objetivo facilitar un entorno de pruebas para realizar practicas utilizando Jenkins.

Para lograr esto se ha creado un box que levanta un conjunto de tres maquinas virtuales:

* vm1 - Servidor de Jenkins **(jt-jenkins)**
* vm2 - Servidor PRE o DEV **(jt-pre-01)**
* vm3 - Servidor PRO **(jt-pro-01)**

<div align="left">
    <img src="img/virtualbox.jpg?raw=true" alt="Virtualbox" width="500px" />
</div>

Lo anterior nos permitira mediante el uso de Jenkins realizar pruebas de CI/CD utilizando dicha herramienta.

---
### :sparkler: <u>Entorno del box</u>
La siguiente imagen muestra el entorno del box:

<div align="center">
    <img src="img/grafico.jpg?raw=true" alt="Grafico del entorno" width="400px" />
</div>

---
### :sparkler: <u>Paquetes y versiones inatalados en VM1</u>
* OS: Ubuntu 22.04
* Nginx: 1.18.0
* Jenkins: 2.426.2

### :sparkler: <u>Paquetes y versiones inatalados en VM2</u>
* OS: Ubuntu 22.04
* Nginx: 1.18.0

### :sparkler: <u>Paquetes y versiones inatalados en VM3</u>
* OS: Ubuntu 22.04
* Nginx: 1.18.0

---
### :sparkler: <u>Como usar el box</u>
Partimos de que debe tener instalado en su PC local Virtualbox y Vagrant en ese mismo orden.

Si no esta instalado deberá realizar las instalaciones adecuadas:

[Descarga e instalación de Virtualbox](https://www.virtualbox.org/wiki/Downloads)
<br/>
[Descarga e instalación de Vagrant](https://developer.hashicorp.com/vagrant/install?product_intent=vagrant)

---
#### <u>Procedimiento en Windows</u>
Accedemos a la carpeta de nuestro PC local donde
deseemos mantener el proyecto y Clonamos el repositorio
~~~
cd C:\mi-proyecto
git clone git@github.com:jhonnygo/vagrant-jenkins-suite.git jenkins
~~~

Accedemos a la carpeta keepcoding
~~~
cd jenkins
~~~

Procedemos a levantar la infraestructura
~~~
vagrant up
~~~

⏰ Tendremos que esperar un par de minutos a que se desplieguen las maquinas virtuales, un total de 3.

Comandos importantes
Si queremos apagar las maquinas y mantener la información guardada en los discos extras.
~~~
vagrant halt
~~~

Si queremos destruir ambas maquinas de forma permanente.
~~~
vagrant destroy
~~~

<div style="background-color: #ffe6e6; padding: 10px; border: 1px solid #f00;">
  <strong style="color: #f00;">¡Advertencia!</strong> Una vez destruidas las maquinas virtuales la información no se puede recuperar.
</div>

<br/>

---

# <u>Acceso a Jenkis</u>

Una vez desplegadas las maquinas virtuales, estos seran los accesos:

Jenkins:
URL de Jenkins
~~~
http://localhost:8080
~~~

<div align="center">
    <img src="img/jenkins-http.jpg?raw=true" alt="Imagen Jenkins web" width="100%" />
</div>

---

Para obtener el token que se solicita al acceder a la url http://localhost:8080 se deben hacer lo que indica la imagen:

Ver el token solicitado
~~~
vagrant ssh vm1 -c "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
~~~

<div align="left">
    <img src="img/jenkins-token.jpg?raw=true" alt="Token de jenkins" width="300px" />
</div>

Una vez realizado este paso, solo hay que seguir los restantes como instalar los plugin, dar de alta al usuario administrador, etc.

---

### :sparkler: <u>Acceso a las maquinas virtuales</u>
Si queremos acceder a cualquiera de las dos maquinas virtuales creadas, es decir,
VM1, VM2 y VM3 debemos seguir el siguiente procedimiento desde la terminal de Windows.

mbas maquinas se encuentran en la misma RED, lo cual nos permite hacer ping entre
ellas como se demuestra a continuación.

Acceso a la maquina virtual 1 (VM1 - 192.168.10.2 => jenkins)
~~~
vagrant ssh vm1
~~~

---

Acceso a la maquina virtual 2 (VM2 - 192.168.10.3 => pre-01)
~~~
vagrant ssh vm2
~~~

---

Acceso a la maquina virtual 3 (VM3 - 192.168.10.4 => pro-01)
~~~
vagrant ssh vm3
~~~

---

## Contacts
    - Mail: contacto@jhonnygo.com
    - Web: https://jhonnygo.com
    ---
    - Mail: jhonny@jhoncytech.com
    - Web: https://jhoncytech.com


<img src="img/happy-coding.jpg?raw=true" alt="Footer Logo" />
