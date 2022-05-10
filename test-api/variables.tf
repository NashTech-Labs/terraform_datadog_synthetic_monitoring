
variable "type" {
  type = string
}

variable "subtype" {
  type = string
}

variable "request_method" {
  type = string
}

variable "request_url" {
  type = string
}

variable "name" {
  type = string
}

variable "locations" {
  type = set(string)
}

variable "slack_alert_channel" {
  type = string
}

variable "pagerduty_service_incident" {
  type = string
}

variable "tags" {
  type = set(string)
}

variable "status" {
  type = string
}
