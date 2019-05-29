#
# Terraform settings.
#
terraform {
  required_version = ">= 0.12.0"

  #--#backend "s3" {
  #--#  bucket         = "S3_BUCKET"
  #--#  dynamodb_table = "PROJECT_NAME-tf-lock"
  #--#  key            = "terraform.tfstate"
  #--#  region         = "AWS_REGION"
  #--#  encrypt        = true
  #--#}
}

#
# AWS Provider.
#
provider "aws" {
  alias               = "AWS_REGION"
  profile             = "AWS_PROFILE"
  region              = "AWS_REGION"
  #allowed_account_ids = []
}

#
# S3 state bucket.
#
resource "aws_s3_bucket" "tf_state" {
  acl           = "private"
  bucket        = "S3_BUCKET"
  force_destroy = false
  region        = "AWS_REGION"

  lifecycle {
    prevent_destroy = true
  }

  versioning {
    enabled = false
  }
}

#
# Dynamo lock mechanism.
#
resource "aws_dynamodb_table" "tf_lock" {
  hash_key       = "LockID"
  name           = "PROJECT_NAME-tf-lock"
  read_capacity  = 10
  write_capacity = 10

  attribute {
    name = "LockID"
    type = "S"
  }

  lifecycle {
    prevent_destroy = true
  }
}
