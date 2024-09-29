# ----------------------------------------------------------------------------------------------------------------------
# OUTPUT CALCULATED VARIABLES (prefer full objects)
# ----------------------------------------------------------------------------------------------------------------------

# pages domain
#
output "id" {
  description = "id of page domain"
  value       = local.outputs.module_enabled ? one(cloudflare_pages_domain.this.*.id) : null
}

# pages project

output "domains" {
  description = "(List of String) A list of associated custom domains for the project."
  value       = local.outputs.module_enabled ? one(cloudflare_pages_project.this.*.domains) : null
}

output "subdomain" {
  description = "(String) The Cloudflare subdomain associated with the project."
  value       = local.outputs.module_enabled ? one(cloudflare_pages_project.this.*.subdomain) : null
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