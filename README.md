# Terraform Module AWS VPC Peering

## Use as a Module

```terrraform

```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.12.29 |
| aws | ~> 2.60 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.60 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| accepter | description | `map` | `{}` | no |
| auto\_accept | description | `bool` | `false` | no |
| destination\_cidr\_block | CIDR block of  Destinat | `string` | `""` | no |
| peer\_owner\_id | description | `string` | `"default"` | no |
| peer\_region | description | `string` | `null` | no |
| peer\_vpc\_id | description | `string` | n/a | yes |
| requester | description | `map` | `{}` | no |
| requester\_route\_table\_ids | Route Table IDs for Requester VPC | `list` | `[]` | no |
| tags | description | `map` | `{}` | no |
| vpc\_id | description | `string` | n/a | yes |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

### To-Do

- [ ] VPC Flow log support for s3
