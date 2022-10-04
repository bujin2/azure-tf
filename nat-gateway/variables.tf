

resource "azurerm_nat_gateway" "natgw" {
  name                = var.natgw_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = var.natgw_sku
}

resource "azurerm_nat_gateway_public_ip_association" "natgw" {
  nat_gateway_id       = azurerm_nat_gateway.natgw.id
  public_ip_address_id = azurerm_public_ip.natgw.id
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

variable "var.natgw_sku"{
  type  = string
  default = ""
}

variable "var.natpip_sku"{
  type  = string
  default = ""
}
