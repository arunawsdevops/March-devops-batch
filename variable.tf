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

variable "instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 1
}  

variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = true
}

variable "project_environment" {
  description = "project name and environment"
  type        = map(string)
  default     = {
    name      = "Terra-EC2"
  }
}