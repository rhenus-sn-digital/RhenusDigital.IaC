resource "azurerm_resource_group" "resource-group" {
  location = var.location
  name     = local.name
}