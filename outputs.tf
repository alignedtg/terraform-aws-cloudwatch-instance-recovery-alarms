output "cloudwatch_system_check_alarm_arn" {
  value = aws_cloudwatch_metric_alarm.system_check[0].arn
}

output "cloudwatch_instance_check_alarm_arn" {
  value = aws_cloudwatch_metric_alarm.instance_check[0].arn
}