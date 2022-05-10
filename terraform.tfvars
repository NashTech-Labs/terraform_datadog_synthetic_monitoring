synthetic_alerts_configs = [
  {
    type                = "api"
    subtype             = "http"
    name                = "Http Health Check"
    request_method      = "GET"
    request_url         = "xxxxxxxxxxxxxxxxxxx"
    locations           = ["aws:us-east-2", "aws:eu-west-2"]
    slack_alert_channel = "xxxxxxxxxxxxxxxxxxx"
    tags                = ["env:prod"]
    status              = "live"
  }
]
