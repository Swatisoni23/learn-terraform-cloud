resource "aws_s3_bucket" "s3" {
  bucket = "sonibucket123456"
  acl    = "private"
}