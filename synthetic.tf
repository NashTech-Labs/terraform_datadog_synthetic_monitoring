module "synthetic_alerts_dive" {
  for_each = { for synthetic_alerts_config in var.synthetic_alerts_configs : synthetic_alerts_config.name => synthetic_alerts_config }
  source   = "./test-api"
  providers = {
    datadog = datadog
  }

  type                = each.value.type
  subtype             = each.value.subtype
  request_method      = each.value.request_method
  request_url         = each.value.request_url
  name                = each.value.name
  locations           = each.value.locations
  slack_alert_channel = each.value.slack_alert_channel
  tags                = each.value.tags
  status              = each.value.status
}