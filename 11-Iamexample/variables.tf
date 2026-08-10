variable "ami" {
  default = "ami-0220d79f3f480ecf5"
}

variable "security_group" {
  default = [ "sg-095e8d0efbeb2469e" ]
}

variable "instance_type" {
  default = "t3.micro"
}

variable "name" {
  default = "frontend"
}