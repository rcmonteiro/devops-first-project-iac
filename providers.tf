terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket  = "devops-rocketseat-rcmonteiro-state-bucket-tf"
    region  = "us-east-1"
    key     = "terraform.tfstate"
    encrypt = true
    profile = "rcmonteiro-iac"
  }
}

provider "aws" {
  profile = "rcmonteiro-iac"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.bucket_state

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    IaC = true
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.bucket

  versioning_configuration {
    status = "Enabled"
  }

  depends_on = [aws_s3_bucket.terraform_state]
}