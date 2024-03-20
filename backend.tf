terraform {
  backend "s3" {
    bucket = "terra-state-bsoft-devops-arun"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}