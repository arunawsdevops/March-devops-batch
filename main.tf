resource "aws_s3_bucket" "s3_bucket_example" {
  bucket = "aws-devops-march-batch"
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws-devops-march-batch.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws-devops-march-batch.id
  acl    = "public-read"
}