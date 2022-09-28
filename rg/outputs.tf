output "network_resource_group_name" {
  description = "The ids of subnets created inside the newly created vNet"
  value       = azurerm_resource_group.rg.name
}

