resource "aws_instance" "tadeu-teste" {
  count                       = 3
  ami                         = "ami-b0b7e3dc"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "tadeu-new-18"
  vpc_security_group_ids      = ["${aws_security_group.my_ssh.id}"]

  tags {
    Name = "tadeu-teste-${count.index}"
  }
}
