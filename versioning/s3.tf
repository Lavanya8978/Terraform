#resource "aws_s3_bucket" "new_bucket" {
 # bucket = "my-new-versioned-bucket"
#}

resource "aws_s3_bucket_versioning" "new_bucket_versioning" {
  bucket = "mytest5588"
  versioning_configuration {
    status = "Enabled"
  }
}

provider "aws" { 
    region = "us-east-1"
}


