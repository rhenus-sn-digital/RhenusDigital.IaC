resource "azurerm_eventhub" "event-hub" {
  name                = var.event_hub_name
  namespace_name      = var.event_hub_namespace_name
  resource_group_name = var.event_hub_namespace_resource_group_name
  partition_count     = var.partition_count
  message_retention   = var.message_retention

  capture_description {
    enabled  = true
    encoding = "AvroDeflate"
    destination {
      archive_name_format = var.capture_archive_format
      blob_container_name = var.capture_blob_container_name
      name                = "EventHubArchive.AzureBlockBlob"
      storage_account_id  = var.capture_storage_account_id
    }
  }
}

resource "azurerm_eventhub_authorization_rule" "listen" {
  name                = "listen"
  namespace_name      = azurerm_eventhub.event-hub.namespace_name
  eventhub_name       = azurerm_eventhub.event-hub.name
  resource_group_name = azurerm_eventhub.event-hub.resource_group_name

  listen = true
  send   = false
  manage = false
}

resource "azurerm_eventhub_authorization_rule" "send" {
  name                = "send"
  namespace_name      = azurerm_eventhub.event-hub.namespace_name
  eventhub_name       = azurerm_eventhub.event-hub.name
  resource_group_name = azurerm_eventhub.event-hub.resource_group_name

  listen = false
  send   = true
  manage = false
}

resource "azurerm_eventhub_authorization_rule" "manage" {
  name                = "manage"
  namespace_name      = azurerm_eventhub.event-hub.namespace_name
  eventhub_name       = azurerm_eventhub.event-hub.name
  resource_group_name = azurerm_eventhub.event-hub.resource_group_name

  listen = true
  send   = true
  manage = true
}