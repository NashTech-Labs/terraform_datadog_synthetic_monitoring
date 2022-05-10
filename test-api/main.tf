# Synthetic Alerts
## Synthetic Alerts for test-api

resource "datadog_synthetics_test" "test-api" {
  type    = var.type
  subtype = var.subtype

  request_definition {
    method = var.request_method
    url    = var.request_url
  }

  request_headers = {
    Content-Type = "application/json"
  }
  assertion {
    operator = "lessThan"
    target   = "5000"
    type     = "responseTime"
  }
  assertion {
    operator = "is"
    target   = "200"
    type     = "statusCode"
  }
  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=UTF-8"
    type     = "header"
  }


  locations = var.locations

  options_list {
    min_failure_duration = 0
    min_location_failed  = 1
    tick_every           = 900

    monitor_options {
      renotify_interval = 20
    }
  }

  name    = var.name
  message = "Notify @slack-${var.slack_alert_channel}"
  tags    = var.tags

  status = var.status
}

terraform {
  required_providers {
    datadog = {
      source = "DataDog/datadog"
    }
    aws = {
      source = "hashicorp/aws"
    }
  }
}
