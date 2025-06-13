terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region
  default_tags {
    tags = {
      Environment = "Test"
      Name        = "Ops"
    }
  }
}