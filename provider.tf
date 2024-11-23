terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "srikanth-tf-remote-state"
    key    = "expense-tools"
    region = "us-east-1"
    dynamodb_table = "srikanth-tf-lock-table"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}