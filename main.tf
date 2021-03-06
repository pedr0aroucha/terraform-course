provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_instance" "dev" {
  count         = 3
  ami           = var.amis["us-east-1"]
  instance_type = "t2.micro"
  key_name      = var.key_name

  tags = {
    Name = "dev${count.index}"
  }

  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
}

resource "aws_s3_bucket" "bucket-pedroaroucha" {
  bucket = "bucket-pedroaroucha"
  acl    = "private"

  tags = {
    Name = "bucket-pedroaroucha"
  }
}
