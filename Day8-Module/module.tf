module "test" {
    source = "../Day8-Source"

    ami_id = "ami-085ad6ae776d8f09c"
    type = "t3.micro"
    key = "devopkey"
    
}


module "dev" {
    source = "../day8-source-ec2"
    
    ami_id = "ami-085ad6ae776d8f09c"
    type = "t2.micro"
    key = "devopkey"
}