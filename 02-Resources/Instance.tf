resource "aws_instance" "test" {
  ami           = "ami-0220d79f3f480ecf5"
  vpc_security_group_ids = [ "sg-095e8d0efbeb2469e" ]
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "test" {
  zone_id = "Z02595892ZU4VXX7PZ67V"
  name    = "www.poorna.com"
  type    = "A"
  ttl     = 300
  records = [ "18.212.235.11" ]
}