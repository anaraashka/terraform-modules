module "app-vpc" {
  source = "../../CHILD/VPC"
  vpc_cidr = "10.91.0.0/16"
  pub_cidr = "10.91.1.0/24"
  prv_cidr = "10.91.2.0/24"
  tag = "App"
}
module "app-server" {
  source = "git::https://github.com/anaraashka/terraform-modules.git//CHILD/EC2"
  subnet_id = module.app-vpc.public_subnet_id
  server_tag = "App-Server"
  # source = "git@github.com:anaraashka/terraform-modules/tree/main/CHILD/EC2"
}