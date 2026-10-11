output "fleet_agent_download_sources_id" {
  description = "Map of id values across all fleet_agent_download_sources, keyed the same as var.fleet_agent_download_sources except keys with no id are omitted"
  value       = { for k, v in elasticstack_fleet_agent_download_source.fleet_agent_download_sources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_agent_download_sources_default" {
  description = "Map of default values across all fleet_agent_download_sources, keyed the same as var.fleet_agent_download_sources except keys with no default are omitted"
  value       = { for k, v in elasticstack_fleet_agent_download_source.fleet_agent_download_sources : k => v.default if v.default != null }
}
output "fleet_agent_download_sources_host" {
  description = "Map of host values across all fleet_agent_download_sources, keyed the same as var.fleet_agent_download_sources except keys with no host are omitted"
  value       = { for k, v in elasticstack_fleet_agent_download_source.fleet_agent_download_sources : k => v.host if v.host != null && length(v.host) > 0 }
}
output "fleet_agent_download_sources_kibana_connection" {
  description = "Map of kibana_connection values across all fleet_agent_download_sources, keyed the same as var.fleet_agent_download_sources except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_fleet_agent_download_source.fleet_agent_download_sources : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "fleet_agent_download_sources_name" {
  description = "Map of name values across all fleet_agent_download_sources, keyed the same as var.fleet_agent_download_sources except keys with no name are omitted"
  value       = { for k, v in elasticstack_fleet_agent_download_source.fleet_agent_download_sources : k => v.name if v.name != null && length(v.name) > 0 }
}
output "fleet_agent_download_sources_proxy_id" {
  description = "Map of proxy_id values across all fleet_agent_download_sources, keyed the same as var.fleet_agent_download_sources except keys with no proxy_id are omitted"
  value       = { for k, v in elasticstack_fleet_agent_download_source.fleet_agent_download_sources : k => v.proxy_id if v.proxy_id != null && length(v.proxy_id) > 0 }
}
output "fleet_agent_download_sources_source_id" {
  description = "Map of source_id values across all fleet_agent_download_sources, keyed the same as var.fleet_agent_download_sources except keys with no source_id are omitted"
  value       = { for k, v in elasticstack_fleet_agent_download_source.fleet_agent_download_sources : k => v.source_id if v.source_id != null && length(v.source_id) > 0 }
}
output "fleet_agent_download_sources_space_ids" {
  description = "Map of space_ids values across all fleet_agent_download_sources, keyed the same as var.fleet_agent_download_sources except keys with no space_ids are omitted"
  value       = { for k, v in elasticstack_fleet_agent_download_source.fleet_agent_download_sources : k => v.space_ids if v.space_ids != null && length(v.space_ids) > 0 }
}

