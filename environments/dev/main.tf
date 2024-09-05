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

module "security_group" {
  source      = "../../modules/security_group"
  name        = var.name
  environment = var.environment
  vpc_id      = module.vpc.vpc_id
  cidr_ipv4   = var.cidr_ipv4
  cidr_ipv6   = var.cidr_ipv6
  http_ports  = var.http_ports
}
