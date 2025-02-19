
resource "aws_vpc" "test" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "cust_vpc"
    }
  
}
resource "aws_subnet" "subent1" {
 vpc_id = aws_vpc.test.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1a"
    tags = {
      Name = "test_subnet1"
    }
  
  
}

resource "aws_subnet" "subent2" {
 vpc_id = aws_vpc.test.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1b"
    tags = {
      Name = "test_subnet1"
    }
  
  
}