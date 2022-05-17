module "vpc" {
  source = "../../CHILD/VPC"
}

module "app-vpc" {
  source = "../../CHILD/VPC"
  vpc_cidr = "10.91.0.0/16"
  pub_cidr = "10.91.1.0/24"
  prv_cidr = "10.91.2.0/24"
  tag = "App"
}