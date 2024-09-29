locals {
  defaults = {
    type = "A"
    ttl  = 1
  }

  input = {
    zone    = data.cloudflare_zone.this.id
    name    = var.name
    value   = var.value
    type    = try(var.type, local.defaults.type)
    ttl     = try(var.ttl, local.defaults.ttl)
    proxied = var.proxied

    # module
    module_enabled = var.module_enabled
  }

  generated = {
    zone    = local.input.zone
    name    = local.input.name
    value   = local.input.value
    type    = local.input.type
    ttl     = local.input.ttl
    proxied = local.input.proxied

    # module
    module_enabled = local.input.module_enabled
  }

  outputs = {
    zone    = local.generated.zone
    name    = local.generated.name
    value   = local.generated.value
    type    = local.generated.type
    ttl     = local.generated.ttl
    proxied = local.generated.proxied

    # module
    module_enabled = local.generated.module_enabled
  }

}

# Add a record to the domain
resource "cloudflare_record" "this" {
  count   = local.outputs.module_enabled ? 1 : 0
  zone_id = local.outputs.zone
  name    = local.outputs.name
  value   = local.outputs.value
  type    = local.outputs.type
  ttl     = local.outputs.ttl
  proxied = local.outputs.proxied
}
