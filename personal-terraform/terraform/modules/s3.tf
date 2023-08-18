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
  region = var.region
}

#backend s3
terraform {
  backend "s3" {
    bucket = "terraformbuckettest12"
    key    = "terraform/statefiles"
    region = "ap-south-1"
  }
}