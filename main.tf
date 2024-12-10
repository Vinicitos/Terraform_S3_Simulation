provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "logify-logs" {
  bucket = "logify-logs-bucket"
  tags = {
    Name = "Logify Bucket Dev"
    Environment = "dev"
  }

}

resource "aws_s3_bucket_public_access_block" "public-block" { 
    bucket = aws_s3_bucket.logify-logs.id

    block_public_acls = true
    block_public_policy = true
    ignore_public_acls = true
    restrict_public_buckets = true

}

resource "aws_s3_bucket_ownership_controls" "bucket-ownership" {
    bucket = aws_s3_bucket.logify-logs.id
    rule {
      object_ownership = "BucketOwnerPreferred"
    }
  
}

resource "aws_s3_bucket_acl" "bucket-acl" {
   depends_on = [ aws_s3_bucket_ownership_controls.bucket-ownership ] 
    
    bucket = aws_s3_bucket.logify-logs.id
    acl = "private"
  
}


resource "aws_s3_bucket_versioning" "bucket-vesioning" {
    bucket = aws_s3_bucket.logify-logs.id
    versioning_configuration {
      status = "Enabled"
    }
  
}


