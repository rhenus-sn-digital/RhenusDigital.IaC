output "connection_string" {
  value = data.azurerm_cosmosdb_account.account.primary_key
}
