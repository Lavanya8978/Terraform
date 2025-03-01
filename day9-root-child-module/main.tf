provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source        = "./modules/ec2"
  instance_type = string
}

 module "s3_bucket" {
   source      = "./modules/s3"
   bucket_name = "myterraformbucket12345"
 }