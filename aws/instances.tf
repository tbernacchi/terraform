resource "aws_instance" "tadeu-web-teste" {
  ami                         = "${lookup(var.amis, var.region)}"
  instance_type               = "${var.instance_type}"
  associate_public_ip_address = "true"
  security_groups             = ["sg_DefaultWebserver"]
  key_name                    = "${var.key_name}"

  tags {
    Name     = "tadeu-web-teste"
    Provider = "terraform"
  }
}