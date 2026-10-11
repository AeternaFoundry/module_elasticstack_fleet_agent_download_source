resource "elasticstack_fleet_agent_download_source" "fleet_agent_download_sources" {
  for_each = var.fleet_agent_download_sources

  host      = each.value.host
  name      = each.value.name
  default   = each.value.default
  proxy_id  = each.value.proxy_id
  source_id = each.value.source_id
  space_ids = each.value.space_ids
  timeouts  = each.value.timeouts

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

