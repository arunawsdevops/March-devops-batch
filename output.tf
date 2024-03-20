output "public_ip" {
   value = aws_instance.ec2_example[*].public_ip
   description = "Public Ip of the instance"
}


output "arn" {
   value = aws_instance.ec2_example[*].arn
   description = "Public Ip of the instance"
}
