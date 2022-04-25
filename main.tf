provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_instance" "dev" {
  count         = 3
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  key_name      = "terraform-aws"

  tags = {
    Name = "dev${count.index}"
  }

  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}", "sg-0cbce4d4050554cc9"]
}

resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "Acesso SSH"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh"
  }
}

resource "aws_s3_bucket" "dev4" {
  bucket = "dev4"
  acl    = "private"

  tags = {
    Name = "dev4"
  }
}

resource "aws_instance" "dev4" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  key_name      = "terraform-aws"

  tags = {
    Name = "dev4"
  }

  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}", "sg-0cbce4d4050554cc9"]
}

resource "aws_instance" "dev5" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  key_name      = "terraform-aws"

  tags = {
    Name = "dev5"
  }

  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}", "sg-0cbce4d4050554cc9"]
}
