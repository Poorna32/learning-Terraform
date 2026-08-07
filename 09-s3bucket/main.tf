terraform {
  backend "s3" {
    bucket = "poorna-terraform-practice"
    key    = "dev/state"
    region = "us-east-1"
  }
}

resource "null_resource" "state1" {}