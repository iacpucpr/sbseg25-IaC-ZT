terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

locals {
  glpi_port = 8080
  glpi_port_https = 443
}
module "install_glpi" {
  source         = "./modules/install"
  container_name = docker_container.glpi.name
  depends_on     = [docker_container.glpi]
}

module "install_mariadb" {
  source         = "./modules/install"
  container_name = docker_container.mariadb.name
  depends_on     = [docker_container.mariadb]
}

module "install_backup" {
  source         = "./modules/install-alpine"
  container_name = docker_container.backup.name
  depends_on     = [docker_container.backup]
}

module "install_ansible" {
  source         = "./modules/install-alpine"
  container_name = docker_container.ansible.name
  depends_on     = [docker_container.ansible]
}
