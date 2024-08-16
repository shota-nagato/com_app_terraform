module "vpc" {
  source = "../../modules/vpc"
  name = var.name
  environment =  var.environment
  vpc_cidr = "10.0.0.0/16"
}
