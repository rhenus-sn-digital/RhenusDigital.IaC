resource "azurerm_key_vault_access_policy" "mssql-server-pool" {
  key_vault_id = var.key_vault_id
  tenant_id    = azurerm_mssql_server.mssql-server.identity[0].tenant_id
  object_id    = azurerm_mssql_server.mssql-server.identity[0].principal_id

  key_permissions = [
    "get",
    "encrypt",
    "decrypt",
    "wrapKey",
    "unwrapKey"
  ]

  depends_on = [
    azurerm_mssql_server.mssql-server
  ]
}

resource "azurerm_key_vault_key" "database-encryption-key" {
  name         = azurerm_mssql_server.mssql-server.name
  key_vault_id = var.key_vault_id
  key_type     = "RSA"
  key_size     = 2048

  key_opts = [
    "encrypt", "decrypt", "wrapKey", "unwrapKey"
  ]
  tags     = var.tags

  depends_on = [
    azurerm_key_vault_access_policy.mssql-server-pool,
    azurerm_private_endpoint.private-endpoint
  ]
}

resource "azurerm_mssql_server_transparent_data_encryption" "customer-managed-key" {
  server_id        = azurerm_mssql_server.mssql-server.id
  key_vault_key_id = azurerm_key_vault_key.database-encryption-key.id

  depends_on = [
    azurerm_key_vault_access_policy.mssql-server-pool,
    azurerm_private_endpoint.private-endpoint
  ]
}