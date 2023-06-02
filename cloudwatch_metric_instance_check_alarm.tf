resource "aws_cloudwatch_metric_alarm" "instance_check" {
  count               = var.instance_check_enabled == true ? 1 : 0
  alarm_name          = "${var.hostname}_instance_check_fail"
  alarm_description   = "Instance check has failed"
  alarm_actions       = ["arn:aws:automate:${var.region}:ec2:reboot"]
  metric_name         = "StatusCheckFailed_Instance"
  namespace           = "AWS/EC2"
  dimensions          = { InstanceId : var.instance_id }
  statistic           = "Maximum"
  period              = var.instance_check_period
  evaluation_periods  = var.instance_check_evaluation_periods
  datapoints_to_alarm = var.instance_check_datapoints_to_alarm
  threshold           = var.instance_check_threshold
  comparison_operator = "GreaterThanOrEqualToThreshold"
  tags                = { "Name" : "${var.hostname}_instance_check_fail" }
}