variable "number" {}

output "number" {
  value = var.number > 100 ? "Number is greater than 100" : "Number is less than 100"
}