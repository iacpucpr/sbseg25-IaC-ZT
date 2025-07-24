# Etapa 2 – Terraform

Execute `terraform init && terraform apply -auto-approve`.
Testar conexão ao container do ansible por meio do comando `docker exec -it lab-zero-trust-ansible sh`
Testar conexão usando SSH `ssh -i /home/minicurso/.ssh/id_rsa minicurso@lab-zero-trust-mariadb`
Testar conexão usando SSH `ssh -i /home/minicurso/.ssh/id_rsa minicurso@lab-zero-trust-backup`
Executar a instalação via ansible do nmap nos containers baseados em debian `ansible-playbook -i /ansible/debian.ini nmap.yml`
Acessar os containers do glpi e mariadb novamente e verificar que o nmap foi instalado:
Testar conexão usando SSH `ssh -i /home/minicurso/.ssh/id_rsa minicurso@lab-zero-trust-mariadb nmap` 
Testar conexão usando SSH `ssh -i /home/minicurso/.ssh/id_rsa minicurso@lab-zero-trust-backup nmap`
