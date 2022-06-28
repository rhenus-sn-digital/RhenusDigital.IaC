locals {
  name = var.domain
}

data "azurerm_cosmosdb_account" "account" {
  name                = var.cosmos_db_account_name
  resource_group_name = var.resource_group_name
}