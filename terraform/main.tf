terraform {
  required_version = "1.3.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
    region = "us-east-1"
}

