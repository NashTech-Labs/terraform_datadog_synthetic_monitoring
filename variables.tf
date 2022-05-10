variable "datadog_api_key" {
  description = "Datadog API Key"
  type        = string
  default     = "xxxxxxxxxxxxxxxxxxx"
}


variable "datadog_app_key" {
  description = "Datadog APP Key"
  type        = string
  default     = "xxxxxxxxxxxxxxxxxxx"
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}


variable "synthetic_alerts_configs" {
  description = "Synthetic Alerts Configuration"
  type = list(object({
    type                       = string
    subtype                    = string
    name                       = string
    request_method             = string
    request_url                = string
    locations                  = set(string)
    slack_alert_channel        = string
    pagerduty_service_incident = string
    tags                       = set(string)
    status                     = string
  }))
}
