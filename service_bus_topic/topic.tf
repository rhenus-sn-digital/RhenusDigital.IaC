resource "azurerm_servicebus_topic" "topic" {
  name         = local.name
  namespace_id = var.service_bus_id

  default_message_ttl = var.message_ttl
}

resource "azurerm_servicebus_topic_authorization_rule" "listen" {
  name     = "listen"
  topic_id = azurerm_servicebus_topic.topic.id

  listen = true
  send   = false
  manage = false
}

resource "azurerm_servicebus_topic_authorization_rule" "send" {
  name     = "send"
  topic_id = azurerm_servicebus_topic.topic.id

  listen = false
  send   = true
  manage = false
}

resource "azurerm_servicebus_topic_authorization_rule" "mange" {
  name     = "mange"
  topic_id = azurerm_servicebus_topic.topic.id

  listen = true
  send   = true
  manage = true
}