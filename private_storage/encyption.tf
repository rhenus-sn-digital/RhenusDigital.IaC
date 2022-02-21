locals {
  create-cmk       = var.key_vault_id != ""
  create-cmk-count = local.create-cmk ? 1 : 0
}

resource "azurerm_key_vault_access_policy" "storage-account-policy" {
  count = local.create-cmk-count

  key_vault_id = var.key_vault_id
  object_id    = azurerm_storage_account.storage-account.identity[0].principal_id
  tenant_id    = azurerm_storage_account.storage-account.identity[0].tenant_id

  key_permissions = [
    "Get", "UnwrapKey", "WrapKey"
  ]
}

resource "azurerm_key_vault_key" "encryption-key" {
  count = local.create-cmk-count

  name         = azurerm_storage_account.storage-account.name
  key_vault_id = var.key_vault_id
  key_type     = "RSA"
  key_size     = 2048
  key_opts     = [
    "decrypt",
    "encrypt",
    "sign",
    "unwrapKey",
    "verify",
    "wrapKey"
  ]

  depends_on = [
    azurerm_key_vault_access_policy.storage-account-policy
  ]
}

resource "azurerm_storage_account_customer_managed_key" "cmk" {
  count = local.create-cmk-count
  
  storage_account_id = azurerm_storage_account.storage-account.id
  key_vault_id       = var.key_vault_id
  key_name           = azurerm_key_vault_key.encryption-key[0].name
  depends_on         = [
    azurerm_key_vault_access_policy.storage-account-policy,
    azurerm_storage_account.storage-account,
    azurerm_private_endpoint.private-endpoint,
    azurerm_key_vault_key.encryption-key
  ]
}