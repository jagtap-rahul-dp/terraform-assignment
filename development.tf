locals {
  development_availability_zones = ["${var.region}a", "${var.region}b", "${var.region}c"]
}

module "network" {
  source               = "./modules/network"
  region               = var.region
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnets_cidr  = var.public_subnets_cidr
  private_subnets_cidr = var.private_subnets_cidr
  availability_zones   = local.development_availability_zones

}

module "ec2_instance" {
  source               = "./modules/ec2-instance"
  ami                  = var.ami
  instance_type        = var.instance_type
  sec_group            = module.network.security_groups_ids_jenkins
  default_sec_group    = module.network.security_groups_ids
  monitoring           = true
  pub_subnet_id        = element(module.network.public_subnets_id, 0)
  prv_subnet_id        = element(module.network.private_subnets_id, 0)
}
