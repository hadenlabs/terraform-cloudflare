module "main" {
  source = "../.."
  zone   = var.zone
  name   = var.name
  value  = var.value
  type   = var.type
  ttl    = var.ttl
}
