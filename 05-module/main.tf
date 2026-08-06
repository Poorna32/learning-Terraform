module "demo-1" {
  source = "./demo"
  instance_type = "t3.small"
  name = "frontend"
}

module "demo-2" {
  source = "./demo"
  instance_type = "t2.micro"
  name = "Backend"
}