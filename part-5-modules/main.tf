module "vpc" {

  source = "./modules/vpc"
  name   = "my-vpc"
  cidr   = var.cidr_block


}

variable "cidr_block" {
  type = string
  default = "192.168.0.0/16"
}

output "vpc_id" {
  value = module.vpc.vpc_id
}