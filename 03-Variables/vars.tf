#1)Variable WithOut Value
variable "x" {}

output "x" {
  value = var.x
}

#2)Variable with Value
variable "x_value" {
  default = 100
}

output "x_value" {
  value = var.x_value
}

#3)Variable with List
variable "y_list" {
  default = [1,2,3]
}

output "y_list" {
  value = var.y_list
}
