terraform {
  # Assumes s3 bucket and dynamo DB table already set up
  backend "s3" {
    bucket         = "comapp-terraform-tfstate"
    key            = "dev/terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "comapp-terraform-tfstate-locking"
    encrypt        = true
  }
}
