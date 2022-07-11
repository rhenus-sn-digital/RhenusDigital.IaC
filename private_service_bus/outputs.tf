output "service_bus_id" {
  value = azurerm_servicebus_namespace.message-hub.id
}

output "service_bus_managed_key" {
  value = azurerm_servicebus_namespace.message-hub.default_primary_key
}

output "service_bus_connection_string" {
  value = azurerm_servicebus_namespace.message-hub.default_primary_connection_string
}