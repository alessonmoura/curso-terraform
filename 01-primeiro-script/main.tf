terraform{
  required_version = "1.2.6"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.24.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    profile = "terraform"
}

resource "aws_s3_bucket" "alesson-primeiro-script" {
  bucket = "alesson-primeiro-script"

  tags = {
    Name        = "alesson-primeiro-script"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}

resource "aws_s3_bucket_acl" "alesson-primeiro-script" {
  bucket = aws_s3_bucket.alesson-primeiro-script.id
  acl    = "private"
}