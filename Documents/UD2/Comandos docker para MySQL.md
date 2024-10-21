# COMANDOS DOCKER PARA MYSQL

## Para trabajar con la imagen *joseliza/mysql:8.4-lts*:

```bash
# [1] Descargar la imagen de Docker
$ docker pull joseliza/mysql:8.4-lts

# [2] Ejecutar un contenedor en segundo plano con el nombre 'mysql', montando un volumen y exponiendo el puerto 33060
$ docker run -dit --name mysql -v mysql-data:/var/lib/mysql -p 33060:3306 joseliza/mysql:8.4-lts

# [3] Iniciar el servidor MySQL en modo seguro
$ docker exec -it mysql mysqld_safe &

# [4] Acceder a la consola de MySQL como usuario root
$ docker exec -it mysql mysql -uroot -p

# [5] Apagar el servidor MySQL de forma segura
$ docker exec -it mysql mysqladmin -uroot -p shutdown
```

Una vez iniciado el contenedor en el punto 2 podríamos entrar en un *bash* dentro del mismo y proceder de la siguiente forma, equivalente a los puntos 3, 4 y 5 anteriores:

```bash
# [3] Entrar en el contenedor en modo interactivo con bash
$ docker exec -it mysql bash

# [4] Iniciar el servidor MySQL en modo seguro
mysqld_safe &

# [5] Acceder a la consola de MySQL como usuario root
mysql -uroot -p

# [6] Apagar el servidor MySQL de forma segura
mysqladmin -uroot -p shutdown
```