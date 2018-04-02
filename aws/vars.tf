variable "region" {
  default = "sa-east-1"
}

variable "availability_zones" {
  default     = "sa-east-1a"
  description = "List of availability zones"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "AWS instance type"
}

variable "amis" {
  type = "map"

  default = {
    sa-east-1 = "ami-0e88cb62"
  }

  description = "Extract our AMIs into a map"
}

variable "access_key" {
  default     = "AKIAJYA63BJLZTZ2UQUA"
  description = "the user aws access key"
}

variable "secret_key" {
  default     = "j9BHBftvqbutp2+/VmrNzP3jw15RgNNJb3uZdoAp"
  description = "the user aws secret key"
}

variable "credentialsfile" {
  default     = "/home/tadeu/.aws/credentials"
  description = "where your access and secret_key are stored"
}

variable "key_name" {
  default     = "tadeu"
  description = "the user aws secret key"
}

variable "vpc-fullcidr" {
  default     = "172.28.0.0/16"
  description = "the vpc cdir"
}

variable "Subnet-Public-AzA-CIDR" {
  default     = "172.28.0.0/24"
  description = "the cidr of the subnet"
}

variable "Subnet-Private-AzA-CIDR" {
  default     = "172.28.3.0/24"
  description = "the cidr of the subnet"
}

variable "DnsZoneName" {
  default     = "tadeu-teste.internal"
  description = "the internal dns name"
}

variable "asg_min" {
  description = "Min numbers of servers in ASG"
  default     = "1"
}

variable "asg_max" {
  description = "Max numbers of servers in ASG"
  default     = "2"
}

variable "asg_desired" {
  description = "Desired numbers of servers in ASG"
  default     = "1"
}

resource "aws_key_pair" "tadeu" {
  key_name   = "tadeu"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDCZjH3zvL4bv6yqU1NElCgioEO7NIjrudC/rj2n+FyEjMv/p2nIDiPreSdQ9nMYTouT4jJeDlpv6iGqF7heGxVRgnbcGTq6XwYMhNT/T4HFzqWAeeeQUf09FP/eEmUGZKPCSeOHoA5VL1mDsOPPPwo/y5uYivsdTETsU1xoZVh72dh92piJHeEIGl2xQhLMQBZArZ9ResfEkZFzQ75kTeC8lOLcv7swygMk8u55briyx6HGMmF6BKotwM1KE/JlQuWFDpzVKck2KpmqmUXQCHPiTQRDl+7ciKnkN4rdkn4x+OdGFTbpAqzc64Mr3fq42WE6Oc899YCi68UaBqay7sL tadeu@lwayslearning"
}