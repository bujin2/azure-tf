variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = map(string)

  default = {
    environment = "dev"
  }
}

variable "natgw_name"{
  type  = string
  default = ""
}

variable "resource_group_name"{
  type  = string
  default = ""
}

variable "location"{
  type  = string
  default = ""
}

variable "allocation_method"{
  type  = string
  default = ""
}

variable "natgw_sku"{
  type  = string
  default = ""
}

variable "natpip_sku"{
  type  = string
  default = ""
}
