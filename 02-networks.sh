#comando para crear una network

docker network ls

docker container run --name box1 -d alpine sleep 3600


docker container run --name box2 -d alpine sleep 3600

docker exec -it box1 sh

docker network create 412_network

docker network --help

docker network connect 412_network box1

docker network connect 412_network box2

#dentro del contenedor box1 hacer ping a box2
ping box2