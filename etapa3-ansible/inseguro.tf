resource "aws_security_group" "insec" {
  name        = "inseguro"
  description = "Grupo de segurança"
  vpc_id      = "rede-insegura_AWS"

  ingress {
    description      = "SSH liberado para toda rede"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
