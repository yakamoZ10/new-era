output "account_id" {
  description = "The AWS Account ID"
  value       = data.aws_caller_identity.current.account_id
  sensitive   = true
}

output "region_name" {
  description = "The current AWS region"
  value       = data.aws_region.current.region
}

output "available_azs" {
  description = "List of available AZs"
  value       = data.aws_availability_zones.available.names
}

output "vpc_id" {
  description = "ID of the development VPC"
  value       = aws_vpc.development.id
}

output "combined_info" {
  description = "Combined region and account information"
  value       = "${data.aws_caller_identity.current.account_id}-${data.aws_region.current.region}"
  sensitive   = true
}

output "avail_zones" {

  description = "the availability zones retrieved from data of AWS"
  value       = data.aws_availability_zones.available.names[*]


}

output "arn_of_the_vpc"{

  description = "ARN of the VPC"
  value = aws_vpc.development.arn
}