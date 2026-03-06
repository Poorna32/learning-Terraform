resource "aws_instance" "Main" {
  ami           = "ami-098d8b074faf7bc92"
  instance_type = "t3.medium"
  tags = {
    Name = "Poornachandra"
  }
}