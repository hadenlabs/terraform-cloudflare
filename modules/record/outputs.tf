# ----------------------------------------------------------------------------------------------------------------------
# OUTPUT CALCULATED VARIABLES (prefer full objects)
# ----------------------------------------------------------------------------------------------------------------------

output "id" {
  description = "id of record."
  value       = local.outputs.module_enabled ? one(cloudflare_record.this.*.id) : null
}

output "hostname" {
  description = "The FQDN of the record."
  value       = local.outputs.module_enabled ? one(cloudflare_record.this.*.hostname) : null
}

output "proxiable" {
  description = "Shows whether this record can be proxied, must be true if setting proxied=true."
  value       = local.outputs.module_enabled ? one(cloudflare_record.this.*.proxiable) : null
}

output "created_on" {
  description = "The RFC3339 timestamp of when the record was created."
  value       = local.outputs.module_enabled ? one(cloudflare_record.this.*.created_on) : null
}

output "modified_on" {
  description = "The RFC3339 timestamp of when the record was last modified."
  value       = local.outputs.module_enabled ? one(cloudflare_record.this.*.modified_on) : null
}

output "metadata" {
  description = "A key-value map of string metadata Cloudflare associates with the record."
  value       = local.outputs.module_enabled ? one(cloudflare_record.this.*.metadata) : null
}

# ----------------------------------------------------------------------------------------------------------------------
# OUTPUT ALL RESOURCES AS FULL OBJECTS
# ----------------------------------------------------------------------------------------------------------------------


# OUTPUT ALL RESOURCES AS FULL OBJECTS

# OUTPUT ALL INPUT VARIABLES

# OUTPUT MODULE CONFIGURATION


# ----------------------------------------------------------------------------------------------------------------------
# OUTPUT MODULE CONFIGURATION
# ----------------------------------------------------------------------------------------------------------------------

output "module_enabled" {
  description = "Whether the module is enabled."
  value       = local.outputs.module_enabled
}
