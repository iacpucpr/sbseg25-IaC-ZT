### Etapa 2 – Terraform
# Entre no diretório da etapa2 `cd etapa2-terraform`
# Crie as chaves ssh dentro do diretório ssh_keys: `ssh-keygen -t rsa -N "" -f ssh_key/id_rsa`
# Execute `terraform init && terraform apply -auto-approve`.
# Testar conexão ao container do ansible por meio do comando `docker exec -it lab-zero-trust-ansible sh`
# Testar conexão usando SSH `ssh -i /home/minicurso/.ssh/id_rsa minicurso@lab-zero-trust-mariadb`
# Testar conexão usando SSH `ssh -i /home/minicurso/.ssh/id_rsa minicurso@lab-zero-trust-backup`
### Caso a conexão seja bem sucedida, siga para a etapa 3.
