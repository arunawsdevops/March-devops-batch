resource "aws_instance" "ec2_example" {

   ami                         =  var.ami_id
   instance_type               =  var.instance_type
   count                       =  var.instance_count
   associate_public_ip_address =  var.enable_public_ip
   
   tags = var.project_environment
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  tags = var.project_env

}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.example.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [aws_s3_bucket_ownership_controls.example]

  bucket = aws_s3_bucket.example.id
  acl    = "private"
}

resource "aws_sns_topic" "user_updates" {
  name = var.topic_name
}
