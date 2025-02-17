 
 terraform {
backend "s3" {
    bucket         = "testttt55555" 
    region         =  "us-east-1"
    key            = "terraform.tfstate"
    dynamodb_table = "terraform-state-lock-dynamo"
     encrypt        = true 
}
}