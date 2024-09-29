#
# ----------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables must be set when using this module.
# ----------------------------------------------------------------------------------------------------------------------
variable "zone" {
  type        = string
  description = "name of zone e.g. 'domain.dev' or 'domain.com'"
  default     = null
}

variable "name" {
  type        = string
  description = "The name of the page"
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

variable "build" {
  description = "Configuration for the source block"
  type = object({
    build_command   = string
    destination_dir = string
    root_dir        = string
  })
  default = {
    build_command   = null
    destination_dir = null
    root_dir        = null
  }
}

# ----------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These variables have defaults, but may be overridden.
# ----------------------------------------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------------------------------------
# MODULE CONFIGURATION PARAMETERS
# These variables are used to configure the module.
# See https://medium.com/mineiros/the-ultimate-guide-on-how-to-write-terraform-modules-part-1-81f86d31f024
# ----------------------------------------------------------------------------------------------------------------------

variable "module_enabled" {
  type        = bool
  description = "(Optional) Whether to create resources within the module or not. Default is true."
  default     = true
}
