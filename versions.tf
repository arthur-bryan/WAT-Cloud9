terraform {
  backend "s3" {
    bucket  = "aw1p-infra-terraform-states"
    key     = "ec2-infra-terraform/terraform.tfstate"
    region  = "sa-east-1"
    profile = "aws-infra-prd"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}