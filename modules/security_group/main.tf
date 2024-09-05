resource "aws_security_group" "ecs" {
  vpc_id = var.vpc_id
  name = "${var.name}-${var.environment}-sg"

  tags = {
    Name = "${var.name}-${var.environment}-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ecs_allow_http_ipv4" {
  security_group_id = aws_security_group.ecs.id
  cidr_ipv4         = var.cidr_ipv4
  ip_protocol       = var.http_ports.ip_protocol
  from_port         = var.http_ports.from_port
  to_port           = var.http_ports.to_port
}

resource "aws_vpc_security_group_ingress_rule" "ecs_allow_http_ipv6" {
  security_group_id = aws_security_group.ecs.id
  cidr_ipv6         = var.cidr_ipv6
  ip_protocol       = var.http_ports.ip_protocol
  from_port         = var.http_ports.from_port
  to_port           = var.http_ports.to_port
}

resource "aws_vpc_security_group_egress_rule" "ecs_allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.ecs.id
  cidr_ipv4         = var.cidr_ipv4
  ip_protocol       = var.all_traffic_ip_protocol
}
