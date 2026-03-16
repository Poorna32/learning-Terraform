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

#4)Variable with Map
variable "z_map" {
  default = {
    x = 10
    y = 20
    z = 30
  }
}

output "z_map" {
  value = var.z_map
}

#Printing Index value from y_list

output "y" {
  value = var.y_list [ 2 ]
}


#Printing X value from Z_map

output "z" {
  value = var.z_map [ x ]
}