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