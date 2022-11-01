resource "azurerm_mariadb_server" "mariadb" {
  name                = var.mariadb_name
  location            = var.location
  resource_group_name = var.resource_group_name

  administrator_login          = var.admin_user
  administrator_login_password = var.admin_password

  sku_name   = var.sku_name
  storage_mb = var.storage_mb
  version    = var.maria_version

  auto_grow_enabled             = var.auto_grow_enabled
  backup_retention_days         = var.backup_retention_days
  geo_redundant_backup_enabled  = var.geo_redundant_backup_enabled
  public_network_access_enabled = var.public_network_access_enabled
  ssl_enforcement_enabled       = var.ssl_enforcement_enabled
  tags                          = var.tags
}


# resource "azurerm_subnet" "mariadb" {
#   name                 = "${azurerm_mariadb_server.mariadb.name}-sub"
#   resource_group_name  = var.resource_group_name
#   virtual_network_name = var.vnet_name
#   address_prefixes     = var.db_address_prefixes
#   service_endpoints    = ["Microsoft.Sql"]
# }


# resource "azurerm_mariadb_virtual_network_rule" "mariadb" {
#   name                = "${azurerm_mariadb_server.mariadb.name}-vnetrule"
#   resource_group_name = var.resource_group_name
#   server_name         = azurerm_mariadb_server.mariadb.name
#   subnet_id           = azurerm_subnet.mariadb.id
# }

# resource "azurerm_mariadb_firewall_rule" "mariadb" {
#   name                = "${azurerm_mariadb_server.mariadb.name}-fwrule"
#   resource_group_name = var.resource_group_name
#   server_name         = azurerm_mariadb_server.mariadb.name
#   start_ip_address    = var.start_ip_address
#   end_ip_address      = var.end_ip_address
# }
