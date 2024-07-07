# How to use this Module

```hcl
module "main" {
  source = "git::https://github.com/hadenlabs/terraform-clouflare.git//modules/record?ref=0.0.0"
  module_enabled         = var.module_enabled
  stage                  = var.stage
  namespace              = var.namespace
  name                   = var.name
}
```
