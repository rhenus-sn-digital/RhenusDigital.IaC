resource "azurerm_servicebus_namespace" "message-hub" {
  location            = var.location
  name                = local.name
  resource_group_name = var.resource_group_name
  sku                 = "Premium"
  capacity            = 1

  tags = var.tags
}

resource "azurerm_servicebus_namespace_network_rule_set" "message-hub" {
  namespace_name                = azurerm_servicebus_namespace.message-hub.name
  resource_group_name           = azurerm_servicebus_namespace.message-hub.resource_group_name
  default_action                = "Deny"
  public_network_access_enabled = true

  network_rules {
    subnet_id                            = var.subnet_id
    ignore_missing_vnet_service_endpoint = false
  }
}