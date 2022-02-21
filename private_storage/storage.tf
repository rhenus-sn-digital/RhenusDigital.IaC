## Storage Account
resource "azurerm_storage_account" "storage-account" {
  name                     = local.name
  location                 = var.location
  resource_group_name      = var.resource_group_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  min_tls_version          = var.min_tls_version

  identity {
    type = "SystemAssigned"
  }

  network_rules {
    default_action             = "Deny"
    ip_rules                   = []
    virtual_network_subnet_ids = []
  }

  tags = var.tags
}