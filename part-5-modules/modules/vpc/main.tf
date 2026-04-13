
variable "cidr" {
    type = string
    default = "10.6.0.0/16"
}

resource "aws_vpc" "vpc" {

 cidr_block = var.cidr

 tags = {
    Name = var.name
 } 
}

output "vpc_id" {
 value = aws_vpc.vpc.id 
}