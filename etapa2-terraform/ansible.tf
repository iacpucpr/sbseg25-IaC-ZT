
# ----- Ansible Controller -----
resource "docker_image" "ansible" {
  name = "alpinelinux/ansible"
}

resource "docker_container" "ansible" {
  name  = "${var.project_name}-ansible"
  image = docker_image.ansible.name

  command = ["sleep", "infinity"]
  networks_advanced {
    name = docker_network.minicurso-net.name
  }


  volumes {
    host_path      = abspath("${path.module}/../etapa3-ansible")
    container_path = "/ansible"
}
  volumes {
    host_path      = abspath("${path.module}/ssh_key/id_rsa") 
    container_path = "/home/minicurso/.ssh/id_rsa"           
  }
}
