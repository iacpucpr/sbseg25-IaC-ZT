
# Laboratório Zero Trust com IaC – Visão Geral

Este laboratório demonstra a evolução de um ambiente tradicional exposto para um ambiente seguro com Zero Trust,
usando Docker, Terraform, Ansible, Checkov e Twingate.

## Estrutura

```
lab-zero-trust-final/
├── etapa1-docker/       # Docker Compose
├── etapa2-terraform/    # Terraform IaC
├── etapa3-ansible/      # Hardening + Checkov + Twingate Verificação
├── exemplos/            # Política YAML
```

## Requisitos

| Ferramenta | Versão |
|-----------|--------|
| Docker | 20.10+ |
| Terraform | 1.5+ |
| Ansible | 2.15+ |
| Checkov | latest (`pip install checkov`) |
| Twingate | conta + client |



## Clone este repositório:
Se você ainda não o fez, clone este projeto para sua máquina local.
```bash
git clone https://github.com/iacpucpr/sbseg25-IaC-ZT/
cd sbseg25-IaC-ZT
```
