# Vpc module
 resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "${var.aws_product_name}-vpc"
  }
}

# Internet Gateway module
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.aws_product_name}-igw"
  }
}

# use data source to get all the available AWS regions
data "aws_availability_zone" "aws_availability_zone" {}

# Subnet module
resource "aws_subnet" "public_subnet_az1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_az1_cidr_block
  availability_zone = data.aws_availability_zone.aws_availability_zone.names[0]
  map_public_ip_on_launch = alltrue()

  tags = {
    Name = "${var.aws_product_name}-${public-subnet-az1_cidr_block}-subnet"
  }
}