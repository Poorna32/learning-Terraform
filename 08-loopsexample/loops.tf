
resource "null_resource" "test" {
  for_each = var.Color
}

variable "Color" {
  default = {
    red = 31
    green = 32
    yellow = 33
    blue = 34
    magenta = 35
    cyan = 36
  }
}