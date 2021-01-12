output "output_traffic_arn" {
  value = var.enabled ? aws_cloudwatch_metric_alarm.output_traffic[0].arn : ""
}

output "output_traffic_id" {
  value = var.enabled ? aws_cloudwatch_metric_alarm.output_traffic[0].id : ""
}

output "input_traffic_arn" {
  value = var.enabled ? aws_cloudwatch_metric_alarm.input_traffic[0].arn : ""
}

output "input_traffic_id" {
  value = var.enabled ? aws_cloudwatch_metric_alarm.input_traffic[0].id : ""
}
