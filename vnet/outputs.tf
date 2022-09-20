output "network_resource_group_name" {
  description = "The ids of subnets created inside the newly created vNet"
  value       = azurerm_resource_group.network.name
}


output "vnet_id" {
  description = "The id of the newly created vNet"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "The name of the newly created vNet"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_location" {
  description = "The location of the newly created vNet"
  value       = azurerm_virtual_network.vnet.location
}

output "vnet_address_space" {
  description = "The address space of the newly created vNet"
  value       = azurerm_virtual_network.vnet.address_space
}

output "vnet_subnets" {
  description = "The ids of subnets created inside the newly created vNet"
  value       = azurerm_subnet.subnet.*.id
}

output "vnet_rg_name" {
  description = "The name of the newly created vNet"
  value       = azurerm_virtual_network.vnet.resource_group_name 
}
