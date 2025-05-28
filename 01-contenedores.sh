docker container run hello-world <image>

#contenedor es un entorno aislado donde existen todas las dependencias de una aplicacion
#Imagen son uns serie de instrucciones que se ejecutan para levantar el contenedor

#Imagen ---> Class
#contenedor ---> objeto

docker container run -d -p 8088:80 docker/getting-started 

#listar contenedores corriendo
docker container ls -a

#detener un contenedor {no borrarlo}
docker container stop <ID del contenedor> o su nombre

#eliminar un contenedor
docker container rm -fv <id del contenedor o nombre>

#Nombrar un contenedor
docker container run -d --name <nombre> -p 8088:80 docker/getting-started

#crear contenedor de ubuntu
docker container run --name=MaquinaVirtual -d -p ubuntu sleep 3600

#como conectarse a un contenedor 
docker container exec -it <nombre del contenedor> <comando con el que quieres entrar>

#levantar contenedor de gninx
docker container run --name=MiPaginaWeb -d -p 81:80 nginx
docker container exec -it MiPaginaWeb bash

#construir una imagen 
docker build -t test-api:1.0 .

#crear mi propio contenedor
docker container run --name=MiPaginaWeb -d -p 3001:3000 test-api:1.0

#crea una instancia de MYSQL
docker container run --name=Mysql1 -e MYSQL_ROOT_PASSWORD=123456 -d -p 3307:3306 mysql

#para publicar se usa docker push
docker push <usuario>/<repo>

#loguearse en docker
docker login -u <usuario> -p <contraseña>

#construir la imagen
docker build -t 151019ardagulercito/node-test:1.0 .
