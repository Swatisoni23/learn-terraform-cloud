resource "aws_s3_bucket" "sonibucket" {
  bucket = "sonibucket"
  acl    = "private"
}