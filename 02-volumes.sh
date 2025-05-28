#que es un volumen

# contenedor de mysql

#comandos
docker volume create mysqlvolume
docker container run --name MySQLDB -e MY_ROOT_PASSWORD=1 -v mysqlvolume:/var/lib/mysql -p :3310:3306 -d mysql

#bind volume
docker container run --name MySQLDB -e MY_ROOT_PASSWORD=1 -v ./data:/var/lib/mysql -p :3310:3306 -d mysql
