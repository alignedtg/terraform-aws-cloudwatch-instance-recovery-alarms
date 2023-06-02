# terraform-aws-cloudwatch-instance-recovery-alarms
A Terraform module to provision CloudWatch alarms that automatically recover EC2 instances on `StatusCheckFailed_System` and `StatusCheckFailed_Instance` conditions.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.instance_check](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.system_check](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hostname"></a> [hostname](#input\_hostname) | n/a | `string` | n/a | yes |
| <a name="input_instance_check_datapoints_to_alarm"></a> [instance\_check\_datapoints\_to\_alarm](#input\_instance\_check\_datapoints\_to\_alarm) | n/a | `string` | `2` | no |
| <a name="input_instance_check_enabled"></a> [instance\_check\_enabled](#input\_instance\_check\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_instance_check_evaluation_periods"></a> [instance\_check\_evaluation\_periods](#input\_instance\_check\_evaluation\_periods) | n/a | `string` | `2` | no |
| <a name="input_instance_check_period"></a> [instance\_check\_period](#input\_instance\_check\_period) | n/a | `string` | `300` | no |
| <a name="input_instance_check_threshold"></a> [instance\_check\_threshold](#input\_instance\_check\_threshold) | n/a | `string` | `1` | no |
| <a name="input_instance_id"></a> [instance\_id](#input\_instance\_id) | n/a | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | n/a | yes |
| <a name="input_system_check_datapoints_to_alarm"></a> [system\_check\_datapoints\_to\_alarm](#input\_system\_check\_datapoints\_to\_alarm) | n/a | `string` | `2` | no |
| <a name="input_system_check_enabled"></a> [system\_check\_enabled](#input\_system\_check\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_system_check_evaluation_periods"></a> [system\_check\_evaluation\_periods](#input\_system\_check\_evaluation\_periods) | n/a | `string` | `2` | no |
| <a name="input_system_check_period"></a> [system\_check\_period](#input\_system\_check\_period) | n/a | `string` | `300` | no |
| <a name="input_system_check_threshold"></a> [system\_check\_threshold](#input\_system\_check\_threshold) | n/a | `string` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudwatch_instance_check_alarm_arn"></a> [cloudwatch\_instance\_check\_alarm\_arn](#output\_cloudwatch\_instance\_check\_alarm\_arn) | n/a |
| <a name="output_cloudwatch_system_check_alarm_arn"></a> [cloudwatch\_system\_check\_alarm\_arn](#output\_cloudwatch\_system\_check\_alarm\_arn) | n/a |

