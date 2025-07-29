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
terraform init && terraform apply -auto-approve
```
## Testando a conexão para os containers:

### Teste a conexão ao container do Ansible:

```bash
docker exec -it lab-zero-trust-ansible sh
```

### Teste a conexão ao container do MariaDB:
```bash
ssh -i /home/minicurso/.ssh/id_rsa minicurso@lab-zero-trust-mariadb
```
### Teste a conexão ao container do MariaDB:
```bash
ssh -i /home/minicurso/.ssh/id_rsa minicurso@lab-zero-trust-backup
```
### Caso a conexão seja bem sucedida, siga para a Etapa 3
