terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.38.0"
    }
  }
}
provider "aws" {

  region = "eu-central-1"
  access_key = var.aws_access_key 
  secret_key = var.aws_secret_key
}

data "aws_vpc" "dev-vpc" {
    filter {

        name = "tag:Name"
        values = ["dev-vpc"]
    }
}

output "vpc-name" {
    value = data.aws_vpc.dev-vpc.cidr_block
  
}