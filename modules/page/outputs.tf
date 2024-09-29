# ----------------------------------------------------------------------------------------------------------------------
# OUTPUT CALCULATED VARIABLES (prefer full objects)
# ----------------------------------------------------------------------------------------------------------------------

output "id" {
  description = "id of page domain"
  value       = local.outputs.module_enabled ? one(cloudflare_pages_domain.this.*.id) : null
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
