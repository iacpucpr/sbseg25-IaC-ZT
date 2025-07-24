variable "container_name" {
  type = string
}

resource "null_resource" "install-alpine" {
  provisioner "local-exec" {
    command = <<EOT
      docker exec ${var.container_name} apk update
      docker exec ${var.container_name} apk add openrc --no-cache
      docker exec ${var.container_name} apk add openssh-server python3 sudo vim
      docker exec ${var.container_name} rc-update add sshd
      docker exec ${var.container_name} rc-status 
      docker exec ${var.container_name} touch /run/openrc/softlevel 
      docker exec ${var.container_name} rc-service sshd restart
      docker exec ${var.container_name} adduser --disabled-password minicurso
      docker exec ${var.container_name} passwd -u minicurso
      docker exec ${var.container_name} mkdir -p /home/minicurso/.ssh
      docker exec ${var.container_name} chown -R minicurso:minicurso /home/minicurso/.ssh
      docker exec ${var.container_name} chmod 700 /home/minicurso/.ssh
      docker exec ${var.container_name} chmod 600 /home/minicurso/.ssh/*
      docker exec ${var.container_name} sh -c "echo 'minicurso ALL=NOPASSWD: ALL' > /etc/sudoers.d/minicurso"
    EOT
  }
}

