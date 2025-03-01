resource "aws_instance" "this" {
   ami = "ami-085ad6ae776d8f09c"  # Replace with a valid AMI
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-EC2"
  }
}