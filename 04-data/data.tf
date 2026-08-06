data "aws_security_group" "test" {
  name = "allow-all"
}

output "securitygroup" {
  value = data.aws_security_group.test.id
}