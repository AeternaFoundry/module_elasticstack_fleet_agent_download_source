variable "fleet_agent_download_sources" {
  description = <<EOT
Map of fleet_agent_download_sources, attributes below
Required:
    - host
    - name
Optional:
    - default
    - proxy_id
    - source_id
    - space_ids
    - timeouts
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    host      = string
    name      = string
    default   = optional(bool)
    proxy_id  = optional(string)
    source_id = optional(string)
    space_ids = optional(set(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

