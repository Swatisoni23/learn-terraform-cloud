#Creating users
resource "aws_iam_user" "newusers" {
  count = length(var.username)
  name  = element(var.username, count.index)
}

resource "aws_iam_user_policy_attachment" "ec2-user-full" {
  count      = length(var.username)
  user       = element(aws_iam_user.newusers.*.name, count.index)
  #policy_arn = "${aws_iam_policy.ec2_readonly.arn}"
  policy_arn = aws_iam_policy.ec2_full.arn
}
resource "aws_iam_user_policy_attachment" "s3_bucket_policy_for_iam_user" {
  #count      = length(var.username)
  user       = aws_iam_user.newusers.1.name
  #policy_arn = "${aws_iam_policy.ec2_readonly.arn}"
  policy_arn = aws_iam_policy.s3_bucket_policy_arn
}