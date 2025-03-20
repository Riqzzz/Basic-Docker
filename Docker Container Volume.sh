volume yang sudah dibuat bisa digunakan di container

docker container create --name namacontainer --publish porthost:portimage --mount "type=volume,source=namavolume,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=towick --env MONGO_INITDB_ROOT_PASSWORD=towick mongo:latest

contoh
docker volume create 
docker container create --name containermongovolume --publish 27019:27017 --mount "type=volume,source=datamongo,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=towick --env MONGO_INITDB_ROOT_PASSWORD=towick mongo:latest