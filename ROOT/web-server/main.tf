module "web-vpc" {
  source = "../../CHILD/VPC"
  vpc_cidr = "10.92.0.0/16"
  pub_cidr = "10.92.1.0/24"
  prv_cidr = "10.92.2.0/24"
  tag = "Web"
}
module "web-server" {
  source = "git::https://github.com/anaraashka/terraform-modules.git//CHILD/EC2"
  subnet_id = module.web-vpc.public_subnet_id
  server_tag = "Web-Server"
  # source = "git@github.com:anaraashka/terraform-modules/tree/main/CHILD/EC2"
}