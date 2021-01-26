variable "enabled" {
  type        = bool
  default     = true
  description = "Gives ability to enable or disable a module"
}

variable "env" {}

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

variable "evaluation_periods" {
  default = "1"
  description = "The number of periods over which data is compared to the specified threshold"
}

variable "threshold" {
  default = "1000000"
  description = "The value against which the specified statistic is compared. By default it is 1 million bytes.If you use default settings you will be alarmed when throughput will be more than 1 millon byte in 60 seconds"
}

variable "statistic" {
  default = "Maximum"
  description = "The statistic to apply to the alarm's associated metric. Either of the following is supported: SampleCount, Average, Sum, Minimum, Maximum"
}

variable "period" {
  default = "60"
  description = "The period in seconds over which the specified stat is applied. Period must be 10, 30 or a multiple of 60"
}

variable "natgateway_ids" {
  description = "ids of NAT Gateways"
}
