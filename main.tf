resource "aws_instance" "ec2_devops" {

ami             = "ami-0c0b74d29acd0cd97"
instance_type   = "t2.micro"

tags = {
   Name ="jenkins-server"
}
}
