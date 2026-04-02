output "VPC_id" {

    description = "The id of the VPC"
    value = aws_vpc.withme-1.id
  
}

output "VPC_cidr" {
    description = "The cidr block of the vpc"
    value = aws_vpc.withme-1.cidr_block
  
}

output "VPC_arn" {

    description = "ARn of the VPC"
    value = aws_vpc.withme-1.arn
  
}