resource "aws_s3_bucket" "b" {
  bucket = "tt-harness-poc-bucket-dev"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

terraform {
  required_version = ">= 1.0.1"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}
