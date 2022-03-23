resource "azurerm_cosmosdb_sql_database" "sql-database" {
  account_name        = data.azurerm_cosmosdb_account.account.name
  name                = var.domain
  resource_group_name = data.azurerm_cosmosdb_account.account.resource_group_name
}