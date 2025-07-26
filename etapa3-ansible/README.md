# Etapa 3 – Ansible

  Requer `community.docker` collection instalada.
  Acesse o docker do ansible ' docker exec -it b400edaef599(id do docker ansible) /bin/sh
  Execute `ansible-playbook -i glpi.ini glpi.yml'
  Acesse o glpi pelo ip do host na sua máquina https:\\192.168.56.133 (por exemplo)
  Aceite o certificado autoassinado. Deve aparecer o GLPI no navegado.
