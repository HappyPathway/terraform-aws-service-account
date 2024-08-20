variable "iam_policy" {
  type = string
}

variable "iam_user_name" {
  type    = string
  default = "s3-access-role"
}

resource "aws_iam_user" "user" {
  name = var.iam_user_name
}

resource "aws_iam_user_policy" "policy" {
  name   = aws_iam_user.user.name
  user   = aws_iam_user.user.name
  policy = jsonencode(var.iam_policy)
}

resource "aws_iam_access_key" "access_key" {
  user = aws_iam_user.user.name
}

output "iam_credentials" {
  value = {
    iam_user_name         = aws_iam_user.user.name
    iam_access_key_id     = aws_iam_access_key.access_key.id
    iam_secret_access_key = aws_iam_access_key.access_key.secret
  }
  description = "The IAM user credentials"
  sensitive   = true
}