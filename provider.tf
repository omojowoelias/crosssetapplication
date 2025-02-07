# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
  
   default_tags {
      tags = {
        Name       = "var.aws_product_name"
        Environment = "var.aws_environment"
  }
}
}

