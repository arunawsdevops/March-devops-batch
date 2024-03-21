variable "ami_id" {
   description = "The ID of the AMI to use for the EC2 instance"
   type        = string
   default     = "ami-02d7fd1c2af6eead0"
}

variable "instance_type" {
   description = "Instance type t2.micro"
   type        =  string
   default     = "t2.micro"
}
