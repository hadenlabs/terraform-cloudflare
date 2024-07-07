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

variable "module_enabled" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating any resources"
}
