variable "container_name" {
  type = string
}

resource "null_resource" "install" {
  provisioner "local-exec" {
    command = <<EOT
      docker exec ${var.container_name} apt update
      docker exec ${var.container_name} apt install -y openssh-server
      docker exec ${var.container_name} mkdir -p /var/run/sshd
      docker exec ${var.container_name} sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
      docker exec ${var.container_name} sed -i 's@session\\\\s*required\\\\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd
      docker exec ${var.container_name} /usr/sbin/sshd
      docker exec ${var.container_name} mkdir -p /root/.ssh
      docker exec ${var.container_name} chmod 700 /root/.ssh

    EOT
  }
}
