module "vpc" {
  source      = "../../modules/vpc"
  name        = var.name
  environment = var.environment
  vpc_cidr    = var.vpc_cidr
}

module "subnet" {
  source      = "../../modules/subnet"
  name        = var.name
  environment = var.environment
  vpc_id      = module.vpc.vpc_id
  subnets     = var.subnets
}
