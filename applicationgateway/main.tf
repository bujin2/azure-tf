resource "azurerm_public_ip" "agw" {
  name                = var.agw_pip_name
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = var.allocation_method
  sku                 = var.pip_sku
}


resource "azurerm_application_gateway" "agw" {
  name                = var.agw_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku {
    name     = var.agw_sku_name
    tier     = var.agw_sku_tier
    capacity = var.agw_sku_capacity
  }

  gateway_ip_configuration {
    name      = "${var.agwname}-agw"
    subnet_id = var.agw_subnet_name
  }

#   frontend_port {
#     name = local.frontend_port_name
#     port = 80
#   }

  frontend_ip_configuration {
    name                 = "${var.agwname}-pip"
    public_ip_address_id = azurerm_public_ip.agw.id
  }

#   backend_address_pool {
#     name = local.backend_address_pool_name
#   }

#   backend_http_settings {
#     name                  = local.http_setting_name
#     cookie_based_affinity = "Disabled"
#     path                  = "/path1/"
#     port                  = 80
#     protocol              = "Http"
#     request_timeout       = 60
#   }

#   http_listener {
#     name                           = local.listener_name
#     frontend_ip_configuration_name = local.frontend_ip_configuration_name
#     frontend_port_name             = local.frontend_port_name
#     protocol                       = "Http"
#   }

#   request_routing_rule {
#     name                       = local.request_routing_rule_name
#     rule_type                  = "Basic"
#     http_listener_name         = local.listener_name
#     backend_address_pool_name  = local.backend_address_pool_name
#     backend_http_settings_name = local.http_setting_name
#   }
# }
