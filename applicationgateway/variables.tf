variable "agw_pip_name" {
  description = ""
  type        = string
  default     = "name"
}

variable "resource_group_name" {
  description = ""
  type        = string
  default     = "resource_group_name"
}


variable "location" {
  description = ""
  type        = string
  default     = "koreacentral"
}

variable "agw_name" {
  description = ""
  type        = string
  default     = "agw_name"
}

variable "pip_sku" {
  description = ""
  type        = string
  default     = "Static"
}

variable "agw_sku_name" {
  description = ""
  type        = string
  default     = "agwskuname"
}


variable "agw_sku_tier" {
  description = ""
  type        = string
  default     = "Standard"
}

variable "agw_sku_capacity" {
  description = ""
  type        = string
  default     = "2"
}

variable "agw_subnet_name" {
  description = ""
  type        = string
  default     = "agwsubnetname"
}
