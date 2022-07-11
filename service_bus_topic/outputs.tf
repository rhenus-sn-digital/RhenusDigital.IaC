output "topic" {
  value = azurerm_servicebus_topic.topic.name
}
output "topic_id" {
  value = azurerm_servicebus_topic.topic.id
}
output "topic_connection_string_listen" {
  value = azurerm_servicebus_topic_authorization_rule.listen.primary_connection_string
}
output "topic_connection_string_send" {
  value = azurerm_servicebus_topic_authorization_rule.send.primary_connection_string
}
output "topic_connection_string_mange" {
  value = azurerm_servicebus_topic_authorization_rule.mange.primary_connection_string
}

