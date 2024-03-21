variable "ami_id" {
   description = "The ID of the AMI to use for the EC2 instance"
   type        = string
}

variable "instance_type" {
   description = "Instance type t2.micro"
   type        = string
}

variable "instance_count" {
  description = "EC2 instance count"
  type        = number
}  

variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = false
}

variable "project_environment" {
  description = "project name and environment"
  type        = map(string)
  default     = {
    name      = "Terra-EC2"
  }
}

variable "bucket_name" {
  description = "s3 bucket name"
  type = string
  }

variable "project_env" {
  description = "project name and environment"
  type        = map(string)
  default     = {
    name      = "Terra-S3"
  }
}

variable "topic_name" {
  description = "sns topic name"
  type = string
}