#!/bin/bash

Punto D - Ansible

busco donde editar el archivo siguendo lo enseñado en la clase del parcial.
edito el archivo dado en tasks/main.yml

nano roles/2do_parcial/tasks/main.yml

creo la carpeta templates
mkdir roles/2do_parcial/templates

creo y edito los archivos a usar en el main con la informacion solicitada usando vatriables para mostrar dada dato sacado de ansible
nano roles/2do_parcial/templates/datos_alumno.j2
nano roles/2do_parcial/templates/datos_equipo.j2


se necesita preparar la coneccion ssh, por la informacion buscada con usar dos comandos se logra la coneccion automatica y ansible se puede conectar a la vm
ssh-keygen   crea la clave

ssh-copy-id roman@127.0.0.1   copia la clave al usuario


busco el archivo hosts en ansible y lo ejecuto
ansible-playbook -i inventory/hosts playbook.yml -K



reviso que todo se genero de forma satisfactoria
ls -R /tmp/2do_parcial
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
sudo cat /etc/sudoers.d/2PSupervisores

 
