terraform {
   backend "s3" {
    bucket = "ag-my-terraform-state-bucket"
    key    = "./terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "tk0-terraform-locks"
    encrypt = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
  
}

provider "aws" {
  region = "eu-central-1"
}