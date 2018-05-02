resource "aws_instance" "teste" { 
  ami                         = "ami-b0b7e3dc"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "tadeu-new-18"
  vpc_security_group_ids  = ["${aws_security_group.my_ssh.id}"]


  tags {
    name = "tadeu-disco"
  }
}
