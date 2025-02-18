#Creation of server
resource "aws_instance" "public_server" {
ami = "ami-053a45fff0a704a47"
instance_type = "t2.micro"
key_name = "devopkey"
subnet_id = aws_subnet.prod.id
vpc_security_group_ids = [aws_security_group.allow_tls.id]
tags = {
  Name = "testec2"
} 
}

resource "aws_instance" "private_server" {
ami = "ami-053a45fff0a704a47"
instance_type = "t2.micro"
key_name = "devopkey"
subnet_id = aws_subnet.prod_private.id
vpc_security_group_ids = [aws_security_group.allow_tls.id]
tags = {
  Name = "testec2"
} 
}