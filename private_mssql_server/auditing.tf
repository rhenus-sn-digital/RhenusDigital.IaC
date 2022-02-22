locals {
  setup-auditing       = var.auditing_storage_account_name != "" && var.auditing_storage_account_resource_group_name != ""
  setup-auditing-count = local.setup-auditing ? 1 : 0
}

resource "azurerm_mssql_server_extended_auditing_policy" "auditing" {
  count = local.setup-auditing-count

  server_id                               = azurerm_mssql_server.mssql-server.id
  storage_endpoint                        = data.azurerm_storage_account.auditing_storage[0].primary_blob_endpoint
  storage_account_access_key              = data.azurerm_storage_account.auditing_storage[0].primary_access_key
  storage_account_access_key_is_secondary = false
  retention_in_days                       = 30
}

data "azurerm_storage_account" "auditing_storage" {
  count = local.setup-auditing-count
  
  name                = var.auditing_storage_account_name
  resource_group_name = var.auditing_storage_account_resource_group_name
}