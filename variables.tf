variable "iam_policy" {
  type    = string
  default = "admin"
}

variable "iam_user_name" {
  type    = string
  default = "s3-access-role"
}

resource "aws_iam_user" "user" {
  name = var.iam_user_name
}