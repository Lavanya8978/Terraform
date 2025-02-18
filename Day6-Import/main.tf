resource "aws_instance" "testweb" {
  #ami-053a45fff0a704a47
   //id = i-0ef226dda71bf7e05
   ami = "ami-053a45fff0a704a47"
    instance_type = "t2.nano"
    key_name="devopkey"
}