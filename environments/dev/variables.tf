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
