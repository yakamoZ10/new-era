resource "aws_subnet" "subnet" {
  cidr_block = var.subnet_cidr
  vpc_id = var.vpc_id
  availability_zone = var.availability_zone

  tags = {
    Name = var.subnet_name
  }
}


resource "aws_internet_gateway" "igw" {
  
  vpc_id = var.vpc_id
  
  tags={
    Name ="${var.subnet_name}-rt"
  }
}
