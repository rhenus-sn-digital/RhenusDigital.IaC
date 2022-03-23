resource "azurerm_cosmosdb_account" "cosmos-db-account" {
  name                          = local.name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  offer_type                    = "Standard"
  kind                          = "GlobalDocumentDB"
  enable_automatic_failover     = false
  public_network_access_enabled = false


  consistency_policy {
    consistency_level       = "Session"
    max_interval_in_seconds = 10
    max_staleness_prefix    = 200
  }

  geo_location {
    failover_priority = 0
    location          = var.location
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}