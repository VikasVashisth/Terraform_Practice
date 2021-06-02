resource "aws_s3_bucket" "vikas009-bucket-1" {
  bucket = "vikas009-bucket-1"
  acl    = "private"

  tags = {
    Name        = "vikas009-bucket-1"
    Environment = "Prod"
  }
}
