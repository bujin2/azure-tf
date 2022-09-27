variable "subnet_name" {
  description = ""
  type        = string
  default     = "name"
}

variable "resource_group_name" {
  description = ""
  type        = string
  default     = "name"
}

variable "virtual_network_name" {
  description = ""
  type        = string
  default     = "name"
}

variable "address_prefixes" {
  description = ""
  type        = string
  default     = "name"
}

variable "mariadb_name" {
  description = ""
  type        = string
  default     = "name"
}

variable "location" {
  description = ""
  type        = string
  default     = "koreacentral"
}

variable "admin_user" {
  description = ""
  type        = string
  default     = "mariaadm"
}

variable "admin_password" {
  description = ""
  type        = string
  default     = "H@Sh1CoR3!"
}

variable "sku_name" {
  description = ""
  type        = string
  default     = "B_Gen5_2"
}

variable "storage_mb" {
  description = ""
  type        = string
  default     = "51200"
}

variable "version" {
  description = ""
  type        = string
  default     = "10.2"
}

variable "auto_grow_enabled" {
  description = ""
  type        = string
  default     = "true"
}

variable "backup_retention_days" {
  description = ""
  type        = string
  default     = "7"
}

variable "geo_redundant_backup_enabled" {
  description = ""
  type        = string
  default     = "false"
}

variable "public_network_access_enabled" {
  description = ""
  type        = string
  default     = "false"
}

variable "ssl_enforcement_enabled" {
  description = ""
  type        = string
  default     = "true"
}
