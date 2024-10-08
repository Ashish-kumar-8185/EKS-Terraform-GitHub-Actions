terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "mys3-terra-state"
    region         = "ap-south-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "terra-dynamodb"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
