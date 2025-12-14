terraform {
  backend "s3" {
    bucket         = "magnolia-radish"
    key            = "staging/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "magnolia"
  }
}
