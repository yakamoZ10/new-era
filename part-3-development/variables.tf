variable "aws_access_key" {
  description = "Access Key"
  type        = string
}

variable "aws_secret_key" {

  description = "Secret Key"
  type        = string

}


variable "vpc_cidr" {
  description = "CIDR block for development VPC"
  type        = string
  default     = "172.16.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for development subnet"
  type        = string
  default     = "172.16.1.0/24"
}

