module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  vpc_name  = "dev-vpc"
}

module "alb" {
  source = "../../modules/alb"

  name    = "dev-alb"
  vpc_id  = module.vpc.vpc_id
  subnets = module.vpc.public_subnets
}

module "ec2" {
  source = "../../modules/ec2"

  vpc_id        = module.vpc.vpc_id
  subnets       = module.vpc.private_subnets
  alb_sg        = module.alb.alb_sg_id
  ami           = var.ami
  instance_type = var.instance_type
}

module "rds" {
  source = "../../modules/rds"

  vpc_id      = module.vpc.vpc_id
  ec2_sg      = module.ec2.ec2_sg_id
  subnets     = module.vpc.private_subnets
  db_username = var.db_username
  db_password = var.db_password
}

