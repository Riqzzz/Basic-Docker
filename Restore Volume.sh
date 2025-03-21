-Buat volume baru untuk restore backupan.

-Buat container baru dengan 2 mount, 1 untuk restore di volume baru, 1 bind mount folder backup dari host.

-Restore dengan container dengan extract isi backup ke volume restore.

-Isi backupan sudah di restore.

-Delete Container yg digunakan buat restore.

-Volume baru berisi data restore backupan siap digunakan container baru.

contoh:
-docker volume create mongorestore
-docker container run --rm --name ubunturestore --mount "type=bind,source=d:\docker\basic-docker\backupvolume,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf  /backupvolume/backup.tar.gz --strip 1"