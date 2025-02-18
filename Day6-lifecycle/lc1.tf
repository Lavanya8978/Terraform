resource "aws_instance" "name" {
  #ami-053a45fff0a704a47
   //id = i-0ef226dda71bf7e05
   ami = "ami-053a45fff0a704a47"
    instance_type = "t2.micro"
    key_name="devopkey"
    availability_zone = "us-east-1a"
      tags = {
    Name = "test"
  }

lifecycle {
   create_before_destroy = true    #this attribute will create the new object first and then destroy the old one
   }

 #lifecycle {
  # prevent_destroy = true    #Terraform will error when it attempts to destroy a resource when this is set to true:
 #}


 #lifecycle {
  # ignore_changes = [tags,]   #This means that Terraform will never update the object but will be able to create or destroy it.
 #}
}
