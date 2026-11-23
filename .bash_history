sudo - roman
cd ~
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ls
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
sudo apt update
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
ansible --version
ansible --version
# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo fdisk -l
fdisck /dev/sdd
fdisk /dev/sdd
sudo fdisk /dev/sdd
lsblk
sudo fdisk /dev/sdc
lsblk
sudo wipefs -a /dev/sdd1
sudo wipefs -a /dev/sdc1
sudo pvcreate /dev/sdd1
sudo pvcreate /dev/sdc1
sudo pvs
sudo vgcreate vg_datos /dev/sdd1
sudo vgcreate vg_temp /dev/sdc1
sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 512M vg_temp -n lv_swap
sudo lvs
lsblk
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-workareas
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
lsblk -f
sudo mkdir /var/lib/docker
sudo mkdir /work
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workareas /work
sudo swapon /dev/mapper/vg_temp-lv_swap
df -h
free -h
echo "/dev/mapper/vg_datos-lv_docker /var/lib/docker ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_datos-lv_workareas /work ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_temp-lv_swap none swap sw 0 0" | sudo tee -a /etc/fstab
cat /etc/fstab
cd ~
mkdir RTA_Examen_$(date +%Y%m%d)
ls
cd RTA_Examen_20261122/
ls
cat Punto_A.sh 
nano Punto_A.sh 
cat Punto_A.sh 
s
ls
docker --version
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
docker --version
sudo systemctl status docker
history -a
exit
df -h
free -h
cd /usr/local/bin
sudo granata_AltaUser-Groups.sh
cd ~
cat ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ls
cd UTN-FRA_SO_Examenes/
cd ~
/usr/local/bin/
cd /usr/local/bin/
sudo vim granata-AltaUser-Groups.sh
cat granata-AltaUser-Groups.sh 
ls -l
sudo chmod g+x granata-AltaUser-Groups.sh 
ls -l
./granata-AltaUser-Groups.sh roman ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo ./granata-AltaUser-Groups.sh roman ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
car granata-AltaUser-Groups.sh 
cat granata-AltaUser-Groups.sh 
sudo ./granata-AltaUser-Gropus.sh roman ~ /UTN-FRA_SO_EXAMENES/202406/bash_script/Lista_Usuarios.txt
cd ~
sudo /usr/local/bin/GranataAltaUser-Groups.sh roman ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ls
cd /usr/local/bin
ls
sudo /usr/local/bin/granata-AltaUser-Groups.sh roman ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo nano granata-AltaUser-Groups.sh 
cat granata-AltaUser-Groups.sh 
sudo /usr/local/bin/granata-AltaUser-Groups.sh roman ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
nano granata-AltaUser-Groups.sh 
sudo vim granata-AltaUser-Groups.sh 
sudo nano granata-AltaUser-Groups.sh 
cat
/usr/local/bin
cd /usr/local/bin
ls
cat granata-AltaUser-Groups.sh 
sudo /usr/local/bin/GranataAltaUser-Groups.sh roman ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo /usr/local/bin/granataAltaUser-Groups.sh roman ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo /usr/local/bin/granata-AltaUser-Groups.sh roman ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
tail -4 /etc/passwd
ls
cd ~
ls
cd RTA_Examen_20261122/
ls
cp /usr/local/bin/granata-AltaUser-Groups.sh ~/RTA
ls
cp /usr/local/bin/granata-AltaUser-Groups.sh ~/RTA_Examen_20261122
ls
nano Punto_B.sh 
cat Punto_B.sh 
cat ~/.bash_history
tail -3 /etc/group
exit
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd docker/
ls
nano index.html 
cat index.html 
sudo vgs
ls -lh
free -h
df -h
sudo vgs
sudo lvextend -L +400M /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
df -h /var/lib/docker
ls
cd ..
ls
cd docker/
docker build -t granataroman/web1-granata .
cat dockerfile
nano dockerfile
cat dockerfile 
docker build -t granataroman/web1-granata .
sudo usermod -aG docker roman
exit
docker images
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd d
cd docker/
sl
ls
docker build -t granataroman/web1-granata .
docker images
docker run -d -p 8080:80 --name web1 granataroman/web1-granata
docker ps
curl localhost:8080
docker login -u granataroman
docker push granataroman/web1-granata
ls
nano run.sh
cat run.sh 
chmod +x run.sh
cd ..
ls
cd..
cd ..
ls
cd ..
ls
cd RTA_Examen_20261122/
ls
nano Punto_C
ls
cd RTA_Examen_20261122/
ls
nano Punto_C
cat Punto_C
ls
cd ..
ls
cd U
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd ansible/
ls
cat playbook.yml 
cd roles/
ls
cd 2do_parcial/
ls
cat README.md 
ls
cd ..
ls
cd ,,
cd ..
ls
cd inventory/
ls
find roles
cat playbook.yml
cat inventory/*
cd ..
find roles
cat playbook.yml
cat inventory/*
ls
cd roles/
ls
cd 2do_parcial/
ls
cd tasks/
ls
cat main.yml 
nano main.yml 
cd ..
ls
mkdir templates
nano templates/datos_alumno.j2
nano templates/datos_equipo.j2
ls
cd templates/
ls
cat datos_alumno.j2 
cat datos_equipo.j2 
ssh keygen
ssh-keygen
exit
ssh roman@127.0.0.1
cd ..
ls
cd inventory/
ls
cat host
cat hosts
cd ..
ls inventory
ansible-playbook -i inventory/hosts playbook.yml -K
ls -R /tmp/2do_parcial
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
sudo cat /etc/sudoers.d/2PSupervisores
cd ..
cd ~
cd RTA_Examen_20261122/
ls
nano Punto_P
cat Punto_P
cd ~
git clone https://github.com/GranataRoman/UTNFRA_SO_2do_TP_Granata.git
ls
cp -r ~/UTN-FRA_SO_Examenes/202406 ~/UTNFRA_SO_2do_TP_Granata/
cp -r ~/RTA_Examen_* ~/UTNFRA_SO_2do_TP_Granata/
history -a
cp ~/.bash_history ~/UTNFRA_SO_2do_TP_Granata/
ls
ls UTNFRA_SO_2do_TP_Granata/
ls RTA_Examen_20261122/
ls 202406
cd 202406
ls -la 
ls -la .bash_history
history -a
