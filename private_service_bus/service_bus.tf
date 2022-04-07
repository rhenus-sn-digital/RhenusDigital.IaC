resource "azurerm_servicebus_namespace" "message-hub" {
  location            = var.location
  name                = local.name
  resource_group_name = var.resource_group_name
  sku                 = ""
}