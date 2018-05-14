variable "zone" {
  default = "sa-east-1"
}

provider "aws" {
  region = "${var.zone}"
}

# VPC
resource "aws_vpc" "private" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"

  tags {
    Name = "Private-10-Subnet"
  }
}

# Subnets
resource "aws_subnet" "private-1" {
  vpc_id                  = "${aws_vpc.private.id}"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "sa-east-1a"

  tags {
    Name = "Private-1"
  }
}

resource "aws_subnet" "private-2" {
  vpc_id                  = "${aws_vpc.private.id}"
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "sa-east-1a"

  tags {
    Name = "Private-2"
  }
}

resource "aws_subnet" "private-3" {
  vpc_id                  = "${aws_vpc.private.id}"
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "sa-east-1a"

  tags {
    Name = "Private-3"
  }
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = ["${aws_subnet.private-1.id}" , "${aws_subnet.private-2.id}" , "${aws_subnet.private-3.id}" ]
}
