mounting(sharing) file/folder pada host ke container docker dengan parameter --mount type(mount,bind,volume) atau source(lokasi file/folder di host) atau destination(lokasi file/folder di container) atau readonly(file/folder hanya bisa dibaca saja oleh container)

docker container create --name namacontainer --mount "type=bind,source=folder,destination=folder,readonly image:tag"

contoh:
docker container create --name containerbindmountmongo --publish 27018:27017 --mount "type=bind,source=D:\docker\basic-docker\data-mongo,destination=/data/db" --cpu 1 --memory 200m --env MONGO_INITDB_ROOT_USERNAME=towick --env MONGO_INITDB_ROOT_PASSWORD=towick mongo:latest