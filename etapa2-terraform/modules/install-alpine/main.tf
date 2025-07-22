variable "container_name" {
  type = string
}

resource "null_resource" "install-alpine" {
  provisioner "local-exec" {
    command = <<EOT
      docker exec ${var.container_name} apk update
      docker exec ${var.container_name} apk add openrc --no-cache
      docker exec ${var.container_name} apk add openssh-server
      docker exec ${var.container_name} rc-update add sshd
      docker exec ${var.container_name} rc-status 
      docker exec ${var.container_name} touch /run/openrc/softlevel 
      docker exec ${var.container_name} rc-service sshd restart
      docker exec ${var.container_name} adduser --disabled-password minicurso
      docker exec ${var.container_name} mkdir -p /home/minicurso/.ssh
      docker exec ${var.container_name} chmod 700 /home/minicurso/.ssh
      docker cp ssh_keys/id_rsa.pub "${var.container_name}:/home/minicurso/.ssh/authorized_keys"
      docker exec ${var.container_name} chmod 700 /home/minicurso/.ssh
    EOT
  }
}

