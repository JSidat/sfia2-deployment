provider "aws" {
    version = "~> 2.8"
    region = "eu-west-1"
    shared_credentials_file = "~/.aws/credentials"
}

module "ec2" {
  source = "./EC2"
  public_subnet_id       = module.vpc.public_subnet
  private_subnet_id = module.vpc.private_subnet
  vpc_security_group_ids = ["${module.sg.public_sg_id}", "${module.sg.private_sg_id}"]
  
}

module "vpc" {
  source = "./VPC"
}


module "sg" {
  source = "./SG"
  vpc_id = module.vpc.vpc

}

#module "rds" {
 # source = "./RDS"
  #private_sg_id = ["${module.sg.private_sg_id}"]
  #public-subnet-1 = module.vpc.public_subnet
  #private-subnet-1 = module.vpc.private_subnet
  #username = var.username
  #password = var.password
#}

