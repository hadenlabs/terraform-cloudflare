terraform {
  required_version = ">= 0.13"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">=3.4.0"
    }

    null = {
      source  = "hashicorp/null"
      version = ">=0.1.0"
    }

  }
}
