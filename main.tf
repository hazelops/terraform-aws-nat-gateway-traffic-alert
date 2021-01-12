resource "aws_sns_topic" "this" {
  count        = var.enabled ? 1 : 0
  name         = "${var.env}-${var.name}-nat-traffic-alarms"
  display_name = "${var.env}-${var.name}"
}

resource "aws_sns_topic_subscription" "this" {
  count                  = var.enabled ? 1 : 0
  endpoint               = var.subscription_endpoint
  endpoint_auto_confirms = var.endpoint_auto_confirms
  protocol               = var.subscription_endpoint_protocol
  topic_arn              = aws_sns_topic.this[0].arn
}

resource "aws_cloudwatch_metric_alarm" "output_traffic" {
  count                     = var.enabled ? 1 : 0
  alarm_name                = "Output traffic"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = var.evaluation_periods
  metric_name               = "BytesOutToSource"
  namespace                 = "AWS/NATGateway"
  period                    = var.period
  statistic                 = var.statistic
  threshold                 = var.threshold
  alarm_description         = "This metric monitors NAT Gateway output traffic utilization"
  ok_actions                = [aws_sns_topic.this[0].arn]
  alarm_actions             = [aws_sns_topic.this[0].arn]
  insufficient_data_actions = [aws_sns_topic.this[0].arn]
  treat_missing_data        = "notBreaching"
  dimensions = {
    NatGatewayId = var.natgateway_id
  }
}

resource "aws_cloudwatch_metric_alarm" "input_traffic" {
  count                     = var.enabled ? 1 : 0
  alarm_name                = "Input traffic"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = var.evaluation_periods
  metric_name               = "BytesInFromSource"
  namespace                 = "AWS/NATGateway"
  period                    = var.period
  statistic                 = var.statistic
  threshold                 = var.threshold
  alarm_description         = "This metric monitors NAT Gateway input traffic utilization"
  ok_actions                = [aws_sns_topic.this[0].arn]
  alarm_actions             = [aws_sns_topic.this[0].arn]
  insufficient_data_actions = [aws_sns_topic.this[0].arn]
  treat_missing_data        = "notBreaching"
  dimensions = {
    NatGatewayId = var.natgateway_id
  }
}
