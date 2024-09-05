variable "name" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "cidr_ipv4" {
  type = string
}

variable "cidr_ipv6" {
  type = string
}

variable "http_ports" {
  type = object({
    from_port   = number
    to_port     = number
    ip_protocol = string
  })
}

variable "all_traffic_ip_protocol" {
  type = string
}
