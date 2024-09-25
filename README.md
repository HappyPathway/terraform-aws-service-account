
[![Terraform Validation](https://github.com/HappyPathway/terraform-aws-service-account/actions/workflows/terraform.yaml/badge.svg)](https://github.com/HappyPathway/terraform-aws-service-account/actions/workflows/terraform.yaml)

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.63.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.access_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_user.user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy.policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |
| [aws_iam_policy_document.admin_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_iam_policy"></a> [iam\_policy](#input\_iam\_policy) | n/a | `string` | `"admin"` | no |
| <a name="input_iam_user_name"></a> [iam\_user\_name](#input\_iam\_user\_name) | n/a | `string` | `"s3-access-role"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_credentials"></a> [iam\_credentials](#output\_iam\_credentials) | The IAM user credentials |
<!-- END_TF_DOCS -->