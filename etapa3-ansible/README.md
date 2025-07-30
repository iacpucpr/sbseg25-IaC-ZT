# Etapa 3 – Ansible
## Configurando nmap com Ansible
### Verificar se os containers estão ativos:
```bash
sudo docker ps
```
### Se os quatro containers (glpi, mariadb, backup e ansible) estiverem ativos, entrar no container do ansible:
```bash
sudo docker exec -it lab-zero-trust-ansible /bin/sh
```
### Instale o pacote Nmap nos containers baseados em Debian usando Ansible:

```bash
ansible-playbook -i /ansible/debian.ini /ansible/nmap.yml
```

### Verifique a instalação do Nmap nos containers do GLPI e MariaDB:

```bash
ssh -i /home/minicurso/.ssh/id_rsa minicurso@lab-zero-trust-mariadb nmap
ssh -i /home/minicurso/.ssh/id_rsa minicurso@lab-zero-trust-glpi nmap
```
## Configurando HTTPS no Container do GLPI

### Configure o HTTPS com Ansible:

```bash 
ansible-playbook -i /ansible/glpi.ini /ansible/glpi.yml
```
### Acesse o GLPI com o IP de loopback ou o IP do container: https://localhost

### Aceite o certificado autoassinado para acessar o GLPI no navegador.

## Verificando Imagem com Checkov
### Sair do container do ansible, retornar para a VM:
```bash
exit
```
### Instalar pacote python venv:
```bash
sudo apt update
sudo apt install python3x-venv
```
### Crie um ambiente virtual para o Checkov:
```bash   
python3 -m venv checkov_env
```
### Ative o ambiente virtual:

```bash
source checkov_env/bin/activate
```
### Instale o Checkov e suas dependências:
```bash
pip3 install checkov
```
### Execute o Checkov:
```bash
checkov -d ../etapa2-terraform
```
### Analise os resultados da varredura para observar as falhas detectadas.
