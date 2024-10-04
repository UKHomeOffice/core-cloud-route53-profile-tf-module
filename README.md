## Caveat
This is currently using cloud formation to deploy and manage Route53 Profiles while we wait for Terraform to add official support (https://github.com/hashicorp/terraform-provider-aws/issues/37050). This module will be refactored once official support is in place.

## Example Usage
```
 module "r53_profile" {
    source = "git::git::https://github.com/UKHomeOffice/core-cloud-route53-profile-tf-module.git?ref=main"

    r53_profile_name = "example"
    r53_zone_ids = ["<R53_ZONE_ID_1>", "<R53_ZONE_ID_2>" ...]     
 }
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudformation_stack.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudformation_stack) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_r53_profile_name"></a> [r53\_profile\_name](#input\_r53\_profile\_name) | The name of the route53 profile | `string` | n/a | yes |
| <a name="input_r53_zone_ids"></a> [r53\_zone\_ids](#input\_r53\_zone\_ids) | The list of Route53 Private Zone IDs to associate with the Route53 Profile | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudformation_id"></a> [cloudformation\_id](#output\_cloudformation\_id) | n/a |
| <a name="output_cloudformation_output"></a> [cloudformation\_output](#output\_cloudformation\_output) | n/a |
<!-- END_TF_DOCS -->