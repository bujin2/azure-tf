resource "azurerm_public_ip" "natgw" {
  name                = "${var.natgw_name}-pip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method
  sku                 = var.natpip_sku
}

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
