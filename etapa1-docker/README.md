# Etapa 1 – Docker Compose
### Entre no diretório da etapa1 

```bash
cd etapa1-docker`
```
### Execute o docker compose para provisionar o ambiente base:
```bash
sudo docker-compose up -d
```
### Acesse http://localhost:8080

### Efetuando a limpeza da etapa1:

```bash
sudo docker-compose down -v
```

### Efetuando a limpeza do ambiente docker. Esse comando remove recursos Docker não utilizados (contêineres, redes e imagens não utilizados ou parados):
```bash
sudo docker system prune --force
```
