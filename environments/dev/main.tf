module "vpc" {
  source = "../../modules/vpc"
  name = var.name
  environment =  var.environment
  vpc_cidr = var.vpc_cidr
}
