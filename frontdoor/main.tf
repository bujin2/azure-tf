resource "azurerm_cdn_profile" "cdn" {
  name                = var.cdn_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.cdn_sku
}

resource "azurerm_cdn_endpoint" "cdn" {
  name                = var.cdn_endpoint
  profile_name        = azurerm_cdn_profile.cdn.name
  location            = azurerm_resource_group.cdn.location
  resource_group_name = azurerm_resource_group.cdn.name

  origin {
    name      = "example"
    host_name = "www.contoso.com"
  }
}
