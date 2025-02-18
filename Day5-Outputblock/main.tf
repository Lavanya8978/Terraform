resource "aws_instance" "test77" {
    ami = "ami-085ad6ae776d8f09c"
    instance_type = "t2.micro"
    key_name = "devopkey"
    availability_zone = "us-east-1a"
    tags = {
      Name = "test77"
    }
   
  
}
