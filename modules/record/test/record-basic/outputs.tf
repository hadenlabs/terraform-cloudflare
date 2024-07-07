output "id" {
  description = "id of record."
  value       = module.main.id
}

output "hostname" {
  description = "The FQDN of the record."
  value       = module.main.hostname
}

output "proxiable" {
  description = "Shows whether record can be proxied, must be true if setting proxied=true."
  value       = module.main.proxiable
}

output "created_on" {
  description = "The RFC3339 timestamp of when the record was created."
  value       = module.main.created_on
}

output "modified_on" {
  description = "The RFC3339 timestamp of when the record was last modified."
  value       = module.main.modified_on
}

output "metadata" {
  description = "A key-value map of string metadata Cloudflare associates with the record."
  value       = module.main.metadata
}
