variable "enabled" {
  type        = bool
  default     = true
  description = "Gives ability to enable or disable a module"
}

variable "env" {}

variable "name" {
  description = "The name of the monitoring and name of the subscription service endpoint"
}

variable "subscription_endpoint" {
  description = "Endpoint endpoint for SNS topic subscription, PagerDuty, Slack etc."
}

variable "endpoint_auto_confirms" {
  type        = bool
  default     = true
  description = "Endpoint endpoint for SNS topic subscription, PagerDuty (https://events.pagerduty.com/integration/<Integration Key>/enqueue)"
}

variable "subscription_endpoint_protocol" {
  default     = "https"
  description = "Endpoint protocol for SNS topic subscription"
}

variable "threshold" {
  default = "100000000"
}

variable "period" {
  default = "180"
  description = ""
}

//variable "port" {
//  default     = "443"
//  description = "The port of the endpoint to be monitored"
//}
//
//variable "type" {
//  default     = "HTTPS"
//  description = "The protocol to use when performing health checks. Valid values are HTTP, HTTPS, HTTP_STR_MATCH, HTTPS_STR_MATCH, TCP, CALCULATED and CLOUDWATCH_METRIC"
//}

//variable "failure_threshold" {
//  default     = "3"
//  description = "The number of consecutive health checks that an endpoint must pass or fail."
//}
//
//variable "cw_alarm_evaluation_periods" {
//  default     = "1"
//  description = "Evaluation periods of Cloudwatch metric alarm"
//}
//
//variable "cw_alarm_period" {
//  default     = "60"
//  description = "Period of Cloudwatch metric alarm"
//}
//
//variable "cw_alarm_statistic" {
//  default     = "Minimum"
//  description = "Statistic of Cloudwatch metric alarm"
//}
//
//variable "cw_alarm_threshold" {
//  default     = "1"
//  description = "Threshold of Cloudwatch metric alarm"
//}
//
//variable "cw_alarm_unit" {
//  default     = "None"
//  description = "Unit of Cloudwatch metric alarm"
//}
