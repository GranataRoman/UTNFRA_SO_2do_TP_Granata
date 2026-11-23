creo las paticiones;
sudo fdisk /dev/ssd: sigo las instrucciones y uso las letras con opcione que ofrece linux con la opcion de listar y finaliso con w para guardar.
sudo fdisk /dev/ssc: hago lo mismo que con ssd 

limpio los discos;
sudo wipefs -a /dev/sdd1  /   sudo wipefs -a /dev/sdc1   lo mismo para los dos

creo el pv;
sudo pvcreate /dev/sdd1   /   sudo pvcreate /dev/sdc1    repito en ambas particiones

creo el vg;
sudo vgcreate vg_datos /dev/sdd1    /   sudo vgcreate vg_datos /dev/sdc1

creo lv;
sudo lvcreate -L 5M vg_datos -n lv_docker   /   sudo lvcreate -L 1.5G vg_datos -n lv_workareas  /  sudo lvcreate -L 512M vg_temp -n lv_swap
en mi caso use el tamaño especifioco porque en el ejemplo recomienda la opcion de 100% free y como los tamaños difieren no quese arriesgarme a romper algo mas adelante y segui los tamaños dados en el enunciado

creo el fs;
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker   /   sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap   en el caso del swap tengo que usar otro comando porque este no se usa como un disco normal, es para que linux lo tome en caso de saturacion de memoria ram

montaje;
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker  /  sudo mount /dev/mapper/vg_datos-lv_workareas /work  /  sudo swapon /dev/mapper/vg_temp-lv_swap


.esta parte es para asegurarce que en el reinicio se guarden las configuraciones como menciona en el enunciado
echo "/dev/mapper/vg_datos-lv_docker /var/lib/docker ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_datos-lv_workareas /work ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_temp-lv_swap none swap sw 0 0" | sudo tee -a /etc/fstab


