resource "azurerm_cosmosdb_sql_database" "sql-database" {
  account_name        = data.azurerm_cosmosdb_account.account.name
  name                = local.name
  resource_group_name = data.azurerm_cosmosdb_account.account.resource_group_name
}