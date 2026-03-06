resource "aws_instance" "Main" {
  ami           = "ami-098d8b074faf7bc92"
  instance_type = "t3.medium"
  vpc_security_group_ids = [sg-00b26069c926d674a]
  tags = {
    Name = "Poornachandra"
  }
}