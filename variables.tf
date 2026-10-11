variable "database_management_cloud_exadata_infrastructures" {
  description = <<EOT
Map of database_management_cloud_exadata_infrastructures, attributes below
Required:
    - compartment_id
    - vm_cluster_ids
Optional:
    - defined_tags
    - discovery_key
    - display_name
    - freeform_tags
    - license_model
    - storage_server_names
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id       = string
    vm_cluster_ids       = list(string)
    defined_tags         = optional(map(string))
    discovery_key        = optional(string)
    display_name         = optional(string)
    freeform_tags        = optional(map(string))
    license_model        = optional(string)
    storage_server_names = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

