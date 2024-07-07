terraform {
  required_version = ">= 1.1.0"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">=3.4.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 2.0"
    }
  }
}
