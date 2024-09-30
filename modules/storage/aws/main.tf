
resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = var.acl # Check if this is necessary, otherwise remove it

  tags = var.tags
}


resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = var.versioning_status
  }
}