variable "zone" {
	default = "sa-east-1"
}

variable "instance" {
	default = "3"
}

variable "size_so" {
        default = "30"
}

variable "size_bd" {
        default = "50"
}

variable "type_disk_so" {
        default = "gp2"
}

variable "type_disk_bd" {
        default = "gp2"
}

variable "type" {
	default = "t2.micro"
}

variable "ami" {
	default = "ami-b0b7e3dc"
}

variable "key" {
	default = "tadeu-new-18"
}

variable "vpc" {
	default = "vpc-15ba2f72"
}

variable "cidr" {
	default = "10.0.0.0/16"
}

variable "security" {
	default = "sg-805e69e6"
}

variable "subnet" {
	type = "list"
	default = [ "subnet-efcfcd88" ,  "subnet-64d0d203" , "subnet-65d0d202" ]
}

variable "ssh_user_name" {
  	default = "ec2-user"
}

variable "ssh_key_file" {
  	default = "../../chave/tadeu-new-18.pem"
}
