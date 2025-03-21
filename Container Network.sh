After create network, add container to network. container bisa saling berkomunikasi di dalam network yang sama dengan menyebut hostname dari containernya(nama container yg mau diakses)

docker container create --name namacontainer --network namanetwork image:tag

contoh:
-docker network create --driver bridge mongonetwork

-docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=towick --env MONGO_INITDB_ROOT_PASSWORD=towick mongo:latest

-docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://towick:towick@mongodb:27017/" mongo-express:latest

-docker container start mongodb

-docker container start mongodbexpress
---------------------------------------------
Menghapus container dari network
docker network disconnect namanetwork namacontainer
contoh:
docker network disconnect mongonetwork mongodb

Menambah container ke network
docker network connect namanetwork namacontainer
contoh:
docker network connect mongonetwork mongodb
