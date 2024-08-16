resource "aws_subnet" "public" {
  for_each = var.subnets.public_subnets

  vpc_id            = var.vpc_id
  cidr_block        = each.value.cidr
  availability_zone = each.value.az

  tags = {
    Name = "${var.name}-${var.environment}-${each.key}-subnet"
  }
}

resource "aws_subnet" "private" {
  for_each = var.subnets.private_subnets

  vpc_id            = var.vpc_id
  cidr_block        = each.value.cidr
  availability_zone = each.value.az

  tags = {
    Name = "${var.name}-${var.environment}-${each.key}-subnet"
  }
}
