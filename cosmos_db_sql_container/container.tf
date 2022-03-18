locals {
  create-database       = var.database_name != ""
  create-database-count = local.create-database ? 1 : 0
}

resource "azurerm_cosmosdb_sql_database" "sql-database" {
  count = local.create-database-count

  account_name        = data.azurerm_cosmosdb_account.account.name
  name                = var.domain
  resource_group_name = data.azurerm_cosmosdb_account.account.resource_group_name
}

resource "azurerm_cosmosdb_sql_container" "sql-container" {
  account_name        = data.azurerm_cosmosdb_account.account.name
  database_name       = local.create-database ? azurerm_cosmosdb_sql_database.sql-database[0].name : var.database_name
  name                = var.application
  partition_key_path  = var.partition_key_path
  resource_group_name = data.azurerm_cosmosdb_account.account.resource_group_name
}