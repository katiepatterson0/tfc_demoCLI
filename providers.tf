terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.0.1, <5.43.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
  access_key = var.aws-access-key
  secret_key = var.aws-secret-access-key
}

terraform {
  cloud {
    organization = "patterson-demo"

    workspaces {
      name = "tfc_democli"
    }
  }
}