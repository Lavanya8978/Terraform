
# S3 Bucket to Store Lambda Code
resource "aws_s3_bucket" "lambda_bucket" {
  bucket        = "aabbccdd66"  # Ensure this is globally unique
  force_destroy = true  # Allows Terraform to delete the bucket even if it contains objects

  tags = {
    Name = "LambdaBucket"
  }
}

# Enable versioning (recommended for Lambda code storage)
resource "aws_s3_bucket_versioning" "lambda_versioning" {
  bucket = aws_s3_bucket.lambda_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Block public access to ensure security
resource "aws_s3_bucket_public_access_block" "lambda_bucket" {
  bucket = aws_s3_bucket.lambda_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

output "aws_s3_bucket" {
  value = aws_s3_bucket.lambda_bucket.bucket
  
}

output "aws_iam_role" {
  value = aws_iam_role.lambda_role.id
  
}