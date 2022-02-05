terraform {
  required_version = "~> 1.1.5"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket = "extra-ransom-tf"
    key = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "extra-ransom"
  shared_credentials_file = "/Users/torndorff/.aws/creds"
}

provider "aws" {
  alias = "acm_provider"
  region = "us-east-1"
  profile = "extra-ransom"
  shared_credentials_file = "/Users/torndorff/.aws/creds"
}