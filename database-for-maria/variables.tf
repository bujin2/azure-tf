variable "resource_group_name" {
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
  default     = "eastus"
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

variable "maria_version" {
  description = ""
  type        = string
  default     = "10.3"
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
  default     = "true"
}

variable "ssl_enforcement_enabled" {
  description = ""
  type        = string
  default     = "true"
}

variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = map(string)

  default = {
    environment = "dev"
  }
}


variable "vnet_name" {
  description = ""
  type        = string
  default     = "name"
}

variable "db_address_prefixes" {
  description = ""
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
