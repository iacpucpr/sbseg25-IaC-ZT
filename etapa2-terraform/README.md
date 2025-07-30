# Etapa 2 – Terraform

## Provisionar a infra com Terraform:

### Entre no diretório da Etapa 2:

```bash
cd etapa2-terraform
```
### Crie as chaves SSH dentro do diretório ssh_keys:

```bash
ssh-keygen -t rsa -N "" -f ssh_key/id_rsa
```
### Execute os comandos Terraform:

```bash
sudo terraform init 
sudo terraform apply -auto-approve
```
## Testando a conexão para os containers:

### Teste a conexão ao container do Ansible:

```bash
sudo docker exec -it lab-zero-trust-ansible sh
```

### Teste a conexão ao container do MariaDB via ansible, retornar para o container do ansible:
```bash
ssh -i /home/minicurso/.ssh/id_rsa minicurso@lab-zero-trust-mariadb
exit
```
### Teste a conexão ao container do Backup via ansible, retornar para o container do ansible:
```bash
ssh -i /home/minicurso/.ssh/id_rsa minicurso@lab-zero-trust-backup
exit
```
###
### Caso a conexão seja bem sucedida, sair do container do ansible:
```bash
exit
```
### Siga para a Etapa 3 que será realizada com os mesmos containers provisionados nessa etapa.
