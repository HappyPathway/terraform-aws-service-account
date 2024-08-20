output "iam_credentials" {
  value = {
    iam_user_name         = aws_iam_user.user.name
    iam_access_key_id     = aws_iam_access_key.access_key.id
    iam_secret_access_key = aws_iam_access_key.access_key.secret
  }
  description = "The IAM user credentials"
  sensitive   = true
}