provider "aws" { 
    region = "us-east-1"
}

 #resource "aws_s3_bucket" "name" {
 #bucket = "testttt9999"
  
 #}

 resource "aws_s3_bucket_versioning" "versioning" {
  bucket = "testttt291996"
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}