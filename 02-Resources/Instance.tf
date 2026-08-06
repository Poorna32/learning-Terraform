resource "aws_instance" "test" {
  ami           = var.ami
  vpc_security_group_ids = var.security_group
  instance_type = var.instance_type

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "test" {
  zone_id = var.zone_id
  name    = "frontend-dev"
  type    = "A"
  ttl     = 300
  records = [ "98.88.253.62" ]
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

variable "zone_id" {
  default = "Z02595892ZU4VXX7PZ67V"
}