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
  autoscale_configuration {
    min_capacity  = var.min_capacity
    max_capacity  = var.max_capacity
  }
  gateway_ip_configuration {
    name      = "${var.agw_name}-agw"
    subnet_id = var.agw_subnet_name
  }

  frontend_port {
    name = "${var.agw_name}-fe-port"
    port = 80
  }

  frontend_ip_configuration {
    name                 = "${var.agw_name}-feip"
    public_ip_address_id = azurerm_public_ip.agw.id
  }

  backend_address_pool {
    name = "${var.agw_name}-beap"
  }

  backend_http_settings {
    name                  = "${var.agw_name}-be-htst"
    cookie_based_affinity = "Disabled"
    path                  = "/"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 60
  }

  http_listener {
    name                           = "${var.agw_name}-httplstn"
    frontend_ip_configuration_name = "${var.agw_name}-feip"
    frontend_port_name             = "${var.agw_name}-fe-port"
    protocol                       = "Http"
  }

  request_routing_rule {
    name                       = "${var.agw_name}-rqrt"
    rule_type                  = "Basic"
    http_listener_name         = "${var.agw_name}-httplstn"
    backend_address_pool_name  = "${var.agw_name}-beap"
    backend_http_settings_name = "${var.agw_name}-be-htst"
    priority                   = var.request_routing_rule_priority
  }
}
