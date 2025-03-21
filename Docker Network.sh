Netwok digunakan untuk menghubungkan antar container yang terisolasi dengan network yang sama (bridge, host(khusus linux) dan none). 


docker network create --driver namadriver namanetwork
docker network ls
docker network rm namanetwork //network tidak bisa di remove apabila digunakan container, container harus dihapus dulu agar network bisa diremove.

contoh:
docker network create --driver bridge contohnetwork
