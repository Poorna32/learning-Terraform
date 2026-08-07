terraform {
  backend "s3" {}
}

resource "null_resource" "state1" {}