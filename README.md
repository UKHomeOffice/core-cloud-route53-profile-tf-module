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
| [aws_route53profiles_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53profiles_profile) | resource |
| [aws_route53profiles_resource_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53profiles_resource_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_r53_profile_name"></a> [r53\_profile\_name](#input\_r53\_profile\_name) | The name of the route53 profile | `string` | n/a | yes |
| <a name="input_r53_zone_ids"></a> [r53\_zone\_ids](#input\_r53\_zone\_ids) | The list of Route53 Private Zone IDs to associate with the Route53 Profile | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_route53profiles_resource_association_id"></a> [aws\_route53profiles\_resource\_association\_id](#output\_aws\_route53profiles\_resource\_association\_id) | n/a |
| <a name="output_aws_route53profiles_resource_association_name"></a> [aws\_route53profiles\_resource\_association\_name](#output\_aws\_route53profiles\_resource\_association\_name) | n/a |
| <a name="output_route53_profile_arn"></a> [route53\_profile\_arn](#output\_route53\_profile\_arn) | n/a |
| <a name="output_route53_profile_id"></a> [route53\_profile\_id](#output\_route53\_profile\_id) | n/a |
| <a name="output_route53_profile_name"></a> [route53\_profile\_name](#output\_route53\_profile\_name) | n/a |
<!-- END_TF_DOCS -->
