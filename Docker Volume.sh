docker volume sebagai storage data sama seperti bind mount bedanya bind mount base host docker volume di manage oleh docker.
secara default data pada container seharusnya disimpan pada volume, jadi ketika create container maka kita seharusnya menggunakan volume.
docker volume create namavolume
docker volume create volumemongo contohnya
docker volume ls //list docker volume

volume dapat di remove jika tidak digunakan oleh container, apabila digunakan maka harus remove containernya. data tetap aman di volume jika container dihapus
docker volume rm namavolume
docker volume rm volumemongo
