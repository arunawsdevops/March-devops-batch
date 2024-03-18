variable "s3hwork" {
    description = "This block holds the S3 bucket name"
    type = string
    default = "christtyblrputbucket"
  
}

variable "ec2name" {
    description = "this block holds the ec2 tag"
    type = map(string)
    default = {
      name = "Hoemeworkec2"
    }
  
}