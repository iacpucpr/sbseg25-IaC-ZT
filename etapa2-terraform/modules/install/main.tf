variable "container_name" {
  type = string
}

resource "null_resource" "install" {
  provisioner "local-exec" {
    command = <<EOT
      docker exec ${var.container_name} apt update
      docker exec ${var.container_name} apt install -y openssh-server sudo
      docker exec ${var.container_name} mkdir -p /var/run/sshd
      docker exec ${var.container_name} sed -i 's@session\\\\s*required\\\\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd
      docker exec ${var.container_name} /usr/sbin/sshd
      docker exec ${var.container_name} useradd minicurso
      docker exec ${var.container_name} mkdir -p /home/minicurso/.ssh
      docker exec ${var.container_name} chown -R minicurso:minicurso /home/minicurso/
      docker exec ${var.container_name} chmod 700 /home/minicurso/.ssh
      docker exec ${var.container_name} chmod 600 /home/minicurso/.ssh/*
      docker exec ${var.container_name} sh -c "echo 'minicurso ALL=NOPASSWD: ALL' > /etc/sudoers.d/minicurso"
    EOT
  }
}
