resource "aws_vpc" "stg-main" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "${local.staging_env} -vpc"
  }
}

resource "aws_instance" "terra-insta" {
  
  ami   = "ami-02d7fd1c2af6eead0"
  instance_type   = "t2.micro"

    tags = {
    Name = "${local.staging_env} -EC2"
  }
}