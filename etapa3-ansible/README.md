# Etapa 3 – Ansible

### Configurando com ansible:
# Acesse o docker do ansible provisionado na etapa2: `docker exec -it lab-zero-trust-glpi /bin/sh`
# Executar a instalação via ansible do pacote nmap nos containers baseados em debian `ansible-playbook -i /ansible/debian.ini /ansible/nmap.yml`
# Acessar os containers do glpi e mariadb novamente e verificar que o nmap foi instalado:
# Testar conexão usando SSH `ssh -i /home/minicurso/.ssh/id_rsa minicurso@lab-zero-trust-mariadb nmap`
# Testar conexão usando SSH `ssh -i /home/minicurso/.ssh/id_rsa minicurso@lab-zero-trust-backup nmap`

#  Após instalação com nmap, será configurado o https no container do GLPI:
#  Execute `ansible-playbook -i /ansible/glpi.ini /ansible/glpi.yml'
#  Acesse o glpi pelo IP de loopback ou pelo IP do seu container https://localhost
#  Aceite o certificado autoassinado. Deve aparecer o GLPI no navegador.

### Verificando imagem com chechov
# Na VM onde estão os scripts, criar um ambiente virtual para o Checkov: `python3 -m venv checkov_env`
# Ativar o ambiente virtual: `source checkov_env/bin/activate`
#Instale o Checkov e suas dependências utilizando o pip: `pip3 install checkov`
#Executar o Checkov na etapa1: `checkov -d etapa1-docker`
# Analisar o resultado do varredura e observar as falhas detectadas.
