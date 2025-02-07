terraform {
  backend "s3" {
    bucket         = "crosssetapplication"
    key            = "crosssetapp.tfstate"
    region         = "us-east-2"
    //dynamodb_table = "value"
  }
}