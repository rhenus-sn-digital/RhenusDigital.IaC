output "listen_connection_string" {
  value = azurerm_eventhub_authorization_rule.listen.primary_connection_string
}

output "send_connection_string" {
  value = azurerm_eventhub_authorization_rule.send.primary_connection_string
}

output "manage_connection_string" {
  value = azurerm_eventhub_authorization_rule.manage.primary_connection_string
}

output "name" {
  value = azurerm_eventhub.event-hub.name
}

output "id" {
  value = azurerm_eventhub.event-hub.id
}