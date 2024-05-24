terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"	
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "terraform-akshaydaw.78s-remote-state"
    key    = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "akshaydaws-78s-locking"
  }
}

#provide authentication here
provider "aws" {
    region = "us-east-1"
}