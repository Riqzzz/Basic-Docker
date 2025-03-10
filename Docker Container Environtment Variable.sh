docker container create --name containerId/namacontainer --publish 27017:27017 --env Key="value"(untuk value menggunakan spasi) atau Key=value(tanpa spasi) --env Key2="value" atau Key2=value image:tag
contoh:
docker container create --name contohcontainermongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=towick --env MONGO_INITDB_ROOT_PASSWORD=towick mongo:latest
Fungsi:
konfigurasi aplikasi dapat diubah dinamis tanpa hardcode didalam aplikasi