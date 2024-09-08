variable "name" {
  default = "com-app"
}

variable "region" {
  default = "ap-northeast-1"
}

variable "environment" {
  default = "dev"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "cidr_ipv4" {
  default = "0.0.0.0/0"
}

variable "cidr_ipv6" {
  default = "::/0"
}

variable "http_ports" {
  default = {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
  }
}

variable "all_traffic_ip_protocol" {
  default = "-1"
}

variable "subnets" {
  default = {
    public_subnets = {
      public-1a = {
        cidr = "10.0.0.0/24",
        az   = "ap-northeast-1a"
      },
      public-1c = {
        cidr = "10.0.1.0/24",
        az   = "ap-northeast-1c"
      }
    },
    private_subnets = {
      private-1a = {
        cidr = "10.0.10.0/24"
        az   = "ap-northeast-1a"
      },
      private-1c = {
        cidr = "10.0.11.0/24"
        az   = "ap-northeast-1c"
      }
    }
  }
}
