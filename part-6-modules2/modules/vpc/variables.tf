variable "vpc_name" {
  description = "Name of the VPC"
  type = string
  default = "my-cool-vpc-for-modules"
}

variable "vpc_cidr" {
    type = string
    default = "192.168.0.0/16"
    description = "The CIDR block of our subnet"
}