variable "aws_access_key" {
  description = "Access Key"
  type        = string
}

variable "aws_secret_key" {

  description = "Secret Key"
  type        = string

}

variable "cidr_block" {
  type        = string
  description = "The IP address range of our VPC"
  default     = "192.168.0.0/16"
}

variable "vpc_name" {
  type        = string
  description = "name of the VPC"
  default     = "terraform-vpc"
}