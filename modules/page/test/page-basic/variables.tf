variable "zone" {
  type        = string
  description = "name of zone e.g. 'domain.dev' or 'domain.com'"
}

variable "name" {
  type        = string
  description = "The name of the record"
}

variable "account_id" {
  type        = string
  description = "The (string) value of the account id"
}

variable "config" {
  description = "Configuration for the source block"
  type = object({
    owner                         = string
    repo_name                     = string
    pr_comments_enabled           = bool
    deployments_enabled           = bool
    production_deployment_enabled = bool
    preview_deployment_setting    = string
    preview_branch_includes       = list(string)
    preview_branch_excludes       = list(string)
  })

  default = {
    owner                         = null
    repo_name                     = null
    pr_comments_enabled           = null
    deployments_enabled           = null
    production_deployment_enabled = null
    preview_deployment_setting    = null
    preview_branch_includes       = null
    preview_branch_excludes       = null
  }
}