#Creating users
resource "aws_iam_user" "newusers" {
  name = "test-user"
}
resource "aws_iam_user" "sit-user" {
  name = "sit-user"
}
resource "aws_iam_user" "dev-user" {
  name = "dev-user"
}
resource "aws_iam_group" "developers" {
  name = "developers"
}
resource "aws_iam_group" "sit" {
  name = "sit"
}
resource "aws_iam_group" "sandbox" {
  name = "sandbox"
}
resource "aws_iam_policy" "s3_bukcet_policy" {
  name = "s3_bucket_policy_for_IAM_user"

  policy = <<EOT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListAllMyBuckets"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::sonibucket"
    }
  ]

}
EOT
}