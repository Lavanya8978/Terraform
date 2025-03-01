provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source        = "./modules/ec2"
  instance_type = var.instance_type
}

 module "s3_bucket" {
   source      = "./modules/s3"
   bucket_name = "test737819"
 }