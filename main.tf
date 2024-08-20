locals {
  iam_policy = var.iam_policy == "admin" ? data.aws_iam_policy_document.admin_policy.json : var.iam_policy
}

resource "aws_iam_user_policy" "policy" {
  name   = aws_iam_user.user.name
  user   = aws_iam_user.user.name
  policy = local.iam_policy
}

resource "aws_iam_access_key" "access_key" {
  user = aws_iam_user.user.name
}