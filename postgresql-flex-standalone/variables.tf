variable "subnet_name" {
  type        = string
  default     = ""
}

variable "resource_group_name" {
  type        = string
  default     = ""
}

variable "resource_group_location" {
  type        = string
  default     = ""
}

variable "vnet_name" {
  type        = string
  default     = ""
}

variable "subnet_prefixes" {
  type        = list(string)
  default     = []
}

variable "service_endpoints" {
  type        = list(string)
  default     = []
 
}

variable "delegation_name" {
  type        = string
  default     = ""
}

variable "pri_dns_zone_name" {
  type        = string
  default     = ""
}

variable "pri_dns_zone_vnetlink_name" {
  type        = string
  default     = ""
}

variable "vnet_id" {
  type        = string
  default     = ""
}

variable "db_name" {
  type        = string
  default     = ""
}

variable "db_version" {
  type        = string
  default     = ""
}

variable "db_admin_user" {
  type        = string
  default     = ""
}

variable "db_admin_password" {
  type        = string
  default     = ""
}
variable "db_storage_mb" {
  type        = string
  default     = ""
}

variable "db_sku_name" {
  type        = string
  default     = ""
}

variable "backup_retention_days" {
  type        = string
  default     = "7"
}

variable "zone" {
  type        = string
  default     = "1"
}



variable "day_of_week" {
  type        = string
  default     = "0"
}

variable "start_hour" {
  type        = string
  default     = "0"
}

variable "start_minute" {
  type        = string
  default     = "0"
}


variable "tags" {
  type        = map(string)

  default = {
    environment = "dev"
  }
}
