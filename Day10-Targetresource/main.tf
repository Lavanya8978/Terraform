resource "aws_instance" "dependent" {
    ami = "ami-0ec0e125bb6c6e8ec"
    instance_type = "t2.micro"
    key_name = "public"
}

resource "aws_s3_bucket" "dependent" {
    bucket = "ytvhshfbbcerrr" 
}

#terraform apply -target=aws_s3_bucket.dependent
#terraform destroy -target=aws_s3_bucket.dependent

#Example below for multiple targets
#terraform apply -target=aws_s3_bucket.dependent -target=aws_instance.dev -target=aws_db_instance.database