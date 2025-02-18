output "az" {
    value = aws_instance.test77.availability_zone
  
}

output "type"{
    value=aws_instance.test77.instance_type
}

output "id"{
    value=aws_instance.test77.ami
}
output "ip" {
    value = aws_instance.test77.public_ip
  
}

output "privateIp" {
    value = aws_instance.test77.private_ip
    sensitive = true
  
}

