<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_group.asg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_launch_template.launch_template](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_ami.ubuntu2204](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_asg_size"></a> [asg\_size](#input\_asg\_size) | Size of the autoscaling group the instance is in (i.e. number of instances to run) | `number` | `1` | no |
| <a name="input_iam_instance_profile"></a> [iam\_instance\_profile](#input\_iam\_instance\_profile) | IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile | `string` | n/a | yes |
| <a name="input_instance_root_volume_size"></a> [instance\_root\_volume\_size](#input\_instance\_root\_volume\_size) | The instance root volume size in GiB | `number` | `30` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The type of instance | `string` | `"t4g.large"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource | `string` | `null` | no |
| <a name="input_monitoring"></a> [monitoring](#input\_monitoring) | If true, the launched EC2 instance will have detailed monitoring enabled | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name prefix to be used on EC2 instance created | `string` | `"DatadogAgentlessScanner"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The VPC Subnet ID to launch in | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of additional tags to add to the instance/volume created | `map(string)` | `{}` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | The user data to provide when launching the instance | `string` | `null` | no |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | A list of security group IDs to associate with | `list(string)` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->