resource "azurerm_subnet" "example" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.subnet_prefixes
  service_endpoints    = var.service_endpoints
  delegation {
    name = var.delegation_name
    service_delegation {
      name = "Microsoft.DBforPostgreSQL/flexibleServers"
      actions = [
        "Microsoft.Network/virtualNetworks/subnets/join/action",
      ]
    }
  }
}
resource "azurerm_private_dns_zone" "example" {
  name                = "${var.pri_dns_zone_name}.postgres.database.azure.com"
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "example" {
  name                  = "${var.pri_dns_zone_vnetlink_name}.com"
  private_dns_zone_name = azurerm_private_dns_zone.example.name
  virtual_network_id    = var.vnet_id
  resource_group_name   = var.resource_group_name
}

resource "azurerm_postgresql_flexible_server" "example" {
  name                   = var.db_name
  resource_group_name    = var.resource_group_name
  location               = var.resource_group_location
  version                = var.db_version
  delegated_subnet_id    = azurerm_subnet.example.id
  private_dns_zone_id    = azurerm_private_dns_zone.example.id
  administrator_login    = var.db_admin_user
  administrator_password = var.db_admin_password
  backup_retention_days  = var.backup_retention_days
  zone                   = var.zone
 
  
   maintenance_window {
    day_of_week  = var.day_of_week
    start_hour   = var.start_hour
    start_minute = var.start_minute
  }

  storage_mb = var.db_storage_mb

  sku_name   = var.db_sku_name
  depends_on = [azurerm_private_dns_zone_virtual_network_link.example]
  tags                = var.tags

}
