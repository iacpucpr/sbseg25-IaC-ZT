# Etapa 2 – Terraform

## Provisionar a infra com Terraform:

### Entre no diretório da Etapa 2:

```bash
cd etapa2-terraform
```
### Crie o diretório ssh_key e crie as chaves SSH dentro dele:

```bash
mkdir ssh_key
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
