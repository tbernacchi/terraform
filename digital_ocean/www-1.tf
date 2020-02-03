resource "digitalocean_droplet" "www-1" {
  image              = "centos-7-x64"
  name               = "www-1"
  region             = "nyc1"
  size               = "512mb"
  private_networking = true
  ssh_keys = [
    var.ssh_fingerprint
  ]

  connection {
    user        = "root"
    type        = "ssh"
    host        = "self.ipv4_address"
    private_key = var.pvt_key
    timeout     = "2m"
  }

  provisioner "local-exec" {
    command    = "ping 127.0.0.1 -n 30 > nul"
    on_failure = continue
  }

  provisioner "local-exec" {
    command    = "yum update -y && yum install -y nginx"
    on_failure = continue
  }
}
