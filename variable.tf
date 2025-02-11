variable "aws_region" {
  description = "The AWS region to deploy resources."
  //default     = "us-east-2"
  type = string
}

variable "aws_product_name" {
  description = "The name of the product."
  type = string
}

variable "aws_environment" {
  description = "The environment to deploy the product."
  type = string
  
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type = string
}

variable "public_subnet_az1_cidr_block" {
  description = "The CIDR block for the subnet."
  type = string
  
}