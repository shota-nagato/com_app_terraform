output "vpc_id" {
  description = "vpc id"
  value       = aws_vpc.main.id
}

output "internet_gateway_id" {
  description = "internet gateway id"
  value       = aws_internet_gateway.gw.id
}
