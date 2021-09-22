# aws-cicd-terraform
A Terraform module to deploy a CI/CD infrastructure for cloud native apps/services


<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.59.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.59.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_s3_remote_state"></a> [s3\_remote\_state](#module\_s3\_remote\_state) | nozaq/remote-state-s3-backend/aws | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.codebuild](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_codebuild_project.terraform_build](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project) | resource |
| [aws_codepipeline.codepipeline](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codepipeline) | resource |
| [aws_codestarconnections_connection.source_repo](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codestarconnections_connection) | resource |
| [aws_iam_role.codebuild_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.codepipeline_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.codepipeline_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_kms_alias.state_bucket_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_s3_bucket.codepipeline_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.codepipeline_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_ssm_parameter.repo_id](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.state_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.state_bucket_kms_id](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.state_bucket_replica](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.terraform_version](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.tf_backend_config](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name_prefix"></a> [app\_name\_prefix](#input\_app\_name\_prefix) | Name of the app/service to which the infrastructure refers to. Prefix (short) version | `string` | n/a | yes |
| <a name="input_app_name_verbose"></a> [app\_name\_verbose](#input\_app\_name\_verbose) | Name of the app/service to which the infrastructure refers to. Verbose version | `string` | n/a | yes |
| <a name="input_repo_branches"></a> [repo\_branches](#input\_repo\_branches) | List of branches that require CI/CD infrastructure | `list(string)` | n/a | yes |
| <a name="input_repo_id"></a> [repo\_id](#input\_repo\_id) | Repository ID (organization/repo-name). Defaults to cloud-lab-iac original repo | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account-id"></a> [account-id](#output\_account-id) | AWS acoount where infrastructure is deployed |
| <a name="output_state-bucket-kms-id"></a> [state-bucket-kms-id](#output\_state-bucket-kms-id) | The KMS customer master key ID to encrypt state buckets |
| <a name="output_state-bucket-name"></a> [state-bucket-name](#output\_state-bucket-name) | The S3 bucket name to store the remote state file |
| <a name="output_state-bucket-replica-name"></a> [state-bucket-replica-name](#output\_state-bucket-replica-name) | The S3 bucket name to replicate the state S3 bucket |
| <a name="output_tf-workspace"></a> [tf-workspace](#output\_tf-workspace) | TF workspace where state is persisted |

<!--- END_TF_DOCS --->