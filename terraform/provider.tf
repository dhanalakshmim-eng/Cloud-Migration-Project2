terraform {
  backend "s3" {
    bucket         = "my-techforce-terraform-state"  # must exist!
    key            = "kimai/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "terraform-lock-table"          # optional for locking
  }
}

provider "aws" {
  region = "eu-north-1"
}

