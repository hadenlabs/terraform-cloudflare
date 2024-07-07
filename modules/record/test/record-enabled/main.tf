module "main" {
  source         = "../.."
  module_enabled = var.module_enabled
  zone           = var.zone
  name           = var.name
  value          = var.value
  type           = var.type
  ttl            = var.ttl
}
