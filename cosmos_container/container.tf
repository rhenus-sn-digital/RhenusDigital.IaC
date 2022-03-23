resource "azurerm_cosmosdb_sql_container" "sql-container" {
  account_name        = data.azurerm_cosmosdb_account.account.name
  database_name       = local.database_name
  name                = local.name
  partition_key_path  = var.partition_key_path
  resource_group_name = data.azurerm_cosmosdb_account.account.resource_group_name
}