output "connection_string" {
  value     = "AccountEndpoint=${data.azurerm_cosmosdb_account.account.endpoint};AccountKey=${data.azurerm_cosmosdb_account.account.primary_key};"
  #sensitive = true

}
output "primary_key" {
  value = data.azurerm_cosmosdb_account.account.primary_key
}
