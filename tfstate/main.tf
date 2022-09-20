provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "tfstate" {
  name     = "${var.service}-tfstate-RG"
  location = local.location
}

resource "azurerm_storage_account" "tfstate" {
  name                     = "tfstate-${var.service}}"
  resource_group_name      = azurerm_resource_group.tfstate.name
  location                 = azurerm_resource_group.tfstate.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
 # allow_blob_public_access = true

  tags = {
    environment = var.environment
    managedby  = "terraform"
    service = var.service
    company = var.company
}
}
resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "blob"
}
