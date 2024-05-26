terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }

    local = {}
  }

  required_version = ">= 1.2.0"

  backend "s3" {
    bucket = "terraform-state-danit-devops-2"
    key    = "slipchuk/hw10-ansible1"
    region = "eu-central-1"
  }
}

provider "aws" {
  region = "eu-north-1"
}