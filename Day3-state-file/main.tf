resource "aws_instance" "name" {
    ami = "ami-085ad6ae776d8f09c"
    instance_type = "t2.nano"
    availability_zone="us-east-1a"
    key_name="devopkey"
    tags={
        Name="test"
    }
    
}

