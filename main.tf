resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "${local.staging_env} -vpc"

  }
}

resource "aws_instance" "my-ec2" {
  ami = var.myami
  instance_type = "t2.micro"

  tags = {
    Name = "${local.staging.env} -ec2"
  }
  
}