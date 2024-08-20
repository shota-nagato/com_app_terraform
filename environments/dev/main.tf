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

module "route_table" {
  source                 = "../../modules/route_table"
  name                   = var.name
  environment            = var.environment
  vpc_id                 = module.vpc.vpc_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = module.vpc.internet_gateway_id
  subnet_ids             = { for idx, id in module.subnet.public_subnet_ids : idx => id }
}
