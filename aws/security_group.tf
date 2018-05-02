resource "aws_security_group" "my_ssh" {
  name = "allow_ssh"
  description = "Allow ssh from my IP"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/32"]
  }

  tags {
    Name        = "my_ssh"
    Provisioner = "terraform"
  }
}