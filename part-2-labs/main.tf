terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.38.0"
    }
  }
}
provider "aws" {

  region     = "eu-central-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  default_tags {
    tags = {
      Managed_by = "Terraform"
      Project = "Terraform Training"
    }
  }
}

resource "aws_vpc" "withme-1" {

  cidr_block           = "10.3.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {

    Name = "WithMe-VPC"
    Env  = "Everywhere"
  }

}