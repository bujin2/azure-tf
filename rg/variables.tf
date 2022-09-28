variable "resource_group_name" {
  type  = string
  default = "rg"
}

variable "location" {
  type  = string
  default = "eastus"
}

variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = map(string)

  default = {
    environment = "dev"
  }
}
