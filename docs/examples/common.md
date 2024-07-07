<!-- Space: Projects -->
<!-- Parent: TerraformCloudflare -->
<!-- Title: Examples TerraformCloudflare -->
<!-- Label: Examples -->
<!-- Include: ./../disclaimer.md -->
<!-- Include: ac:toc -->

## Common

```hcl
module "main" {
  source = git::https://github.com/hadenlabs/terraform-cloudflare//modules/record?ref=0.0.0
  version = 0.0.0
  module_enabled = var.module_enabled
}
```
