terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}
provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}
