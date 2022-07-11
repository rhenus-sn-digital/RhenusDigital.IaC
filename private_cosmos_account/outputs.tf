output "account_name" {
  value = azurerm_cosmosdb_account.cosmos-db-account.name
}

output "resource_group_name" {
  value = azurerm_cosmosdb_account.cosmos-db-account.resource_group_name
}


output "connection_string" {
  value     = "AccountEndpoint=${azurerm_cosmosdb_account.cosmos-db-account.endpoint};AccountKey=${azurerm_cosmosdb_account.cosmos-db-account.primary_key};"
  sensitive = true
}