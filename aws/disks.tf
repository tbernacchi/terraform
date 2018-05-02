resource "aws_ebs_volume" "disco1" {
  availability_zone = "sa-east-1a"
  size              = 10

  tags {
    Name = "Disco1"
  }
}

resource "aws_volume_attachment" "disco1-vol-attach" {
  device_name = "/dev/xvdb"
  volume_id   = "${aws_ebs_volume.disco1.id}"
  instance_id = "${aws_instance.teste.id}"
}

resource "aws_ebs_volume" "disco2" {
  availability_zone = "sa-east-1a"
  size              = 10

  tags {
    Name = "Disco2"
  }
}

resource "aws_volume_attachment" "disco2-vol-attach" {
  device_name = "/dev/xvdc"
  volume_id   = "${aws_ebs_volume.disco2.id}"
  instance_id = "${aws_instance.teste.id}"
}

resource "aws_ebs_volume" "disco3" {
  availability_zone = "sa-east-1a"
  size              = 10

  tags {
    Name = "Disco3"
  }
}

resource "aws_volume_attachment" "disco3-vol-attach" {
  device_name = "/dev/xvdd"
  volume_id   = "${aws_ebs_volume.disco3.id}"
  instance_id = "${aws_instance.teste.id}"
}

resource "aws_ebs_volume" "disco4" {
  availability_zone = "sa-east-1a"
  size              = 10

  tags {
    Name = "Disco4"
  }
}

resource "aws_volume_attachment" "disco4-vol-attach" {
  device_name = "/dev/xvde"
  volume_id   = "${aws_ebs_volume.disco4.id}"
  instance_id = "${aws_instance.teste.id}"
}

resource "aws_ebs_volume" "disco5" {
  availability_zone = "sa-east-1a"
  size              = 10

  tags {
    Name = "Disco5"
  }
}

resource "aws_volume_attachment" "disco5-vol-attach" {
  device_name = "/dev/xvdf"
  volume_id   = "${aws_ebs_volume.disco5.id}"
  instance_id = "${aws_instance.teste.id}"
}

resource "aws_ebs_volume" "disco6" {
  availability_zone = "sa-east-1a"
  size              = 10

  tags {
    Name = "Disco6"
  }
}

resource "aws_volume_attachment" "disco6-vol-attach" {
  device_name = "/dev/xvdg"
  volume_id   = "${aws_ebs_volume.disco6.id}"
  instance_id = "${aws_instance.teste.id}"
}

resource "aws_ebs_volume" "disco7" {
  availability_zone = "sa-east-1a"
  size              = 10

  tags {
    Name = "Disco7"
  }
}

resource "aws_volume_attachment" "disco7-vol-attach" {
  device_name = "/dev/xvdh"
  volume_id   = "${aws_ebs_volume.disco1.id}"
  instance_id = "${aws_instance.teste.id}"
}
