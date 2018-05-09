# Curso de Jenkins para Openwebinars.com

En este repositorio, tienes el material para poder realizar el curso

## Requisitos

* [Vagrant](https://www.vagrantup.com/)
* [Virtualbox](https://www.virtualbox.org/)
* Cuenta en GitHub
* Cuenta en [DockerHub](https://hub.docker.com/)

## Instrucciones

```sh
$ git clone https://github.com/melozo/servidor-jenkins.git
$ cd servidor-jenkins
$ vagrant up # Esto puede tardar unos minutos
```

Abre tu navegador y pon esta dirección:

http://192.168.50.5:8080

Te pedirá contraseña para continuar, para extraerla usa estos
comandos:

```sh
$ vagrant ssh # Accederás por ssh al servidor
$ cat /var/lib/jenkins/secrets/initialAdminPassword
```

¡Espero que disfrutes!

__Sigue las instrucciones indicadas en el curso__
