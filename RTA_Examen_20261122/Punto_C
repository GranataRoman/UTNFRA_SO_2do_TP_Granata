voy a la carpeta docker y entro al arcivo index para editarlo
nano index.html    modificio el arcivo y guardo


reviso el espacio disponible en la particon de docker y veo que tiene apenas unos 3.5M
df -h


ahi investigo el tamaño posible de una imagen docker y decido aumentar el tamaño de dicho volumen, reviso los comandos del machete y ingreso
sudo lvextend -L +400M /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker


tengo que crear un dockerfile ya que no se encuentra en la ruta, y no necedito un docker compose
nano Dockerfile

agrego esas lineas dentro del archivo:
FROM nginx
COPY index.html /usr/share/nginx/html/index.html

creo la imagen
docker build -t granataroman/web1-granata .

reviso
docker images

pruebo que este ok
docker run -d -p 8080:80 --name web1 granataroman/web1-granata
curl localhost:8080

me logueo a docker
docker login -u granataroman

subo la imagen a docker
docker push granataroman/web1-granata

reviso en docker web y esta subida

luego creo el archivo run.sh
nano run.sh
docker run -d -p 8080:80 granataroman/web1-granata

le doy prmisos de ejecucion 
chmod +x run.sh
