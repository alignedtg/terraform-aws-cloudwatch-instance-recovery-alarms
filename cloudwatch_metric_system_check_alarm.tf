resource "aws_cloudwatch_metric_alarm" "system_check" {
  count               = var.system_check_enabled == true ? 1 : 0
  alarm_name          = "${var.hostname}_system_check_fail"
  alarm_description   = "System check has failed"
  alarm_actions       = ["arn:aws:automate:${var.region}:ec2:recover"]
  metric_name         = "StatusCheckFailed_System"
  namespace           = "AWS/EC2"
  dimensions          = { InstanceId : var.instance_id }
  statistic           = "Maximum"
  period              = var.system_check_period
  evaluation_periods  = var.system_check_evaluation_periods
  datapoints_to_alarm = var.system_check_datapoints_to_alarm
  threshold           = var.system_check_threshold
  comparison_operator = "GreaterThanOrEqualToThreshold"
  tags                = { "Name" : "${var.hostname}_system_check_fail" }
}

