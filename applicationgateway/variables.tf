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

variable "allocation_method" {
  description = ""
  type        = string
  default     = "Static"
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
  default     = "WAF_v2"
}


variable "agw_sku_tier" {
  description = ""
  type        = string
  default     = "WAF_v2"
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

variable "request_routing_rule_priority" {
  description = ""
  type        = string
  default     = "1"
}

variable "min_capacity" {
  description = ""
  type        = string
  default     = "1"
}

variable "max_capacity" {
  description = ""
  type        = string
  default     = "5"
}

variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = map(string)

  default = {
    environment = "dev"
  }
}

