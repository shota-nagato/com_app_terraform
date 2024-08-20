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

resource "aws_route_table_association" "public" {
  for_each = { for idx, id in var.subnet_ids : idx => id }

  subnet_id      = each.value
  route_table_id = aws_route_table.public.id
}
