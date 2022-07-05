resource "azurerm_key_vault_secret" "topic-id" {
  key_vault_id = var.pipeline_key_vault_id
  name         = "${local.name}-topic-id"
  value        = azurerm_servicebus_topic.topic.id
}

resource "azurerm_key_vault_secret" "topic-listen-key" {
  key_vault_id = var.pipeline_key_vault_id
  name         = "${local.name}-topic-listen-connectionstring"
  value        = azurerm_servicebus_topic_authorization_rule.listen.primary_connection_string
}

resource "azurerm_key_vault_secret" "topic-send-key" {
  key_vault_id = var.pipeline_key_vault_id
  name         = "${local.name}-topic-send-connection-string"
  value        = azurerm_servicebus_topic_authorization_rule.send.primary_connection_string
}

resource "azurerm_key_vault_secret" "topic-mange-key" {
  key_vault_id = var.pipeline_key_vault_id
  name         = "${local.name}-topic-manage-connection-string"
  value        = azurerm_servicebus_topic_authorization_rule.mange.primary_connection_string
}

resource "azurerm_key_vault_secret" "topic-name" {
  key_vault_id = var.pipeline_key_vault_id
  name         = "${local.name}-topic-name"
  value        = azurerm_servicebus_topic.topic.name
}