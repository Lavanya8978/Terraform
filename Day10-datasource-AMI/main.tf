
provider "aws" {
  
}
#calling Default AMI process aas a Data source

 data "aws_ami" "amzlinux" {
   most_recent = true
   owners = [ "amazon" ]
   filter {
     name = "name"
     values = [ "amzn2-ami-hvm-*-gp2" ]
   }
   filter {
     name = "root-device-type"
     values = [ "ebs" ]
   }
   filter {
     name = "virtualization-type"
     values = [ "hvm" ]
   }
   filter {
     name = "architecture"
     values = [ "x86_64" ]
   }
}

#Calling custom AMI process as data source

#data "aws_ami" "amzlinux" {
  #most_recent = true
 # owners = [ "amazon" ]
  #filter {
   # name = "name"
    #values = [ "ami-05b10e08d247fb927" ]
  #}
  
#}

resource "aws_instance" "dev" {
    ami = data.aws_ami.amzlinux.id
    instance_type = "t2.micro"
    tags = {
      Name = "dev"
    }


}