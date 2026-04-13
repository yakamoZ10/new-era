module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.6.1"

  cidr = var.cidr_block
  name = var.vpc_name
}


 