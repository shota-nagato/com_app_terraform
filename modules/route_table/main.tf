resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.destination_cidr_block
    gateway_id = var.gateway_id
  }

  tags = {
    Name = "${var.name}-${var.environment}-route-table"
  }
}
