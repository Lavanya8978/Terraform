resource "aws_instance" "name" {
    ami = "ami-085ad6ae776d8f09c"
    instance_type = "t3.micro"
    disable_api_termination = false
}