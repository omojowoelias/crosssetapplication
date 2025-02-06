terraform {
  backend "s3" {
    bucket         = "crosssetapplication"
    key            = "environment/crosssetapp.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "THE_ID_OF_THE_DYNAMODB_TABLE"
  }
}