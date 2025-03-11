untuk limit penggunaan resource container, --cpus(0.5=setengah core, 1=1core) untuk limit cpu, --memory(100b=bytes, 100k=kilo bytes, 100m=mega bytes, 100g=giga bytes) untuk limit memory

contoh:
docker container create --name contohcontainernginxlimit --publish 8081:80 --cpus 0.5 --memory 100m nginx:latest //limit resource usage memory and cpu container