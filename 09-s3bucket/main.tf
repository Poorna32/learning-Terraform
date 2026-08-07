terraform {
  backend "s3" {
    bucket = "poorna-terraform-practice"
    key    = "dev/state/testing"
    region = "us-east-1"
  }
}

resource "aws_instance" "test" {
  ami           = var.ami
  vpc_security_group_ids = var.security_group
  instance_type = var.instance_type

  tags = {
    Name = "frontend"
  }
}


  variable "ami" {
    default = "ami-0220d79f3f480ecf5"
  }

  variable "security_group" {
    default = [ "sg-095e8d0efbeb2469e" ]
  }

  variable "instance_type" {
    default = "t3.micro"
  }
