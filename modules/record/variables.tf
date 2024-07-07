#
# ----------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables must be set when using this module.
# ----------------------------------------------------------------------------------------------------------------------

variable "zone" {
  type        = string
  description = "name of zone e.g. 'domain.dev' or 'domain.com'"
}

variable "name" {
  type        = string
  description = "The name of the record"
}

variable "value" {
  type        = string
  description = "The (string) value of the record. Either this or data must be specified"
}

variable "type" {
  type        = string
  description = "The type of the record"
  default     = "A"
}

variable "ttl" {
  type        = number
  description = "The TTL of the record (automatic: '1')"
  default     = 3600
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
