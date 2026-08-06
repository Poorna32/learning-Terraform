resource "aws_instance" "test" {
  for_each = var.instance_type
  ami           = var.ami
  instance_type = each.value[ "instance_type" ]
  vpc_security_group_ids = var.security_group


  tags = {
    Name = each.key
  }
}

variable "ami" {
  default = "ami-0220d79f3f480ecf5"
}

variable "security_group" {
  default = [ "sg-095e8d0efbeb2469e" ]
}

variable "instance_type" {
  default = {
    frontend = {
      instance_type = "t3.micro"
    }

    Backend = {
      instance_type = "t3.micro"
    }

    sql = {
      instance_type = "t3.micro"
    }
  }
}