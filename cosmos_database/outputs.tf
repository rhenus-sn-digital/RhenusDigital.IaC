output "database-name" {
  value = azurerm_cosmosdb_sql_database.sql-database.name
}

output "database-id" {
  value = azurerm_cosmosdb_sql_database.sql-database.id
}

output "account-name" {
  value = azurerm_cosmosdb_sql_database.sql-database.account_name
}