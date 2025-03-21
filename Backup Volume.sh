Matikann container dari volume yang digunakan untuk di backup.

Buat container baru dengan 2 mount, 1 untuk volume yang akan di backup, dan 1 untuk bind mount folder dari host.

Backup makai container dengan archive isi volume, simpan di bind mount folder.

Isi file backup berada di folder host.

Stop container yang digunakan untuk backup.

Delete Container yg digunakan untuk backup.

Start container yang digunakan pada volume yang di backup.

contoh
-docker container stop containervolumemongo
-docker container create --name nginxbackup --mount "type=bind,source=D:\docker\basic-docker\backupvolume,destionation=/backup" --mount "type=volume,source=datamongo,destination=/data" nginx:latest
-docker container exec -i -t nginxbackup /bin/bash
-tar -a -c -f backup.zip.gz data //tar -a -c -f namafile.zip.gz folderygdibackup
-exit
-docker container stop nginxbackup
-docker container rm nginxbackup
-docker container start containervolumemongo

cara 2
-docker image pull ubuntu:latest
-docker container run --rm --name ubuntubackup --mount "type=bind,source=D:\docker\basic-docker\backupvolume,destionation=/backup" --mount "type=volume,source=datamongo,destination=/data" ubuntu:latest ar -a -c -f backup-lagi.zip.gz data