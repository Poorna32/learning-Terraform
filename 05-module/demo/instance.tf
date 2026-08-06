resource "aws_instance" "test" {
  ami           = "ami-0220d79f3f480ecf5"
  vpc_security_group_ids = [ "sg-095e8d0efbeb2469e" ]
  availability_zone = "Z02595892ZU4VXX7PZ67V"
  instance_type = var.instance_type

  tags = {
    Name = var.name
  }
}


variable "instance_type" {}

variable "name" {}