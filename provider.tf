terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIAXCW2PAACY3CK7YUY"
  secret_key = "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"
}