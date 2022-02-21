## Storage Account
resource "azurerm_storage_account" "storage-account" {
  name                     = local.name
  location                 = var.location
  resource_group_name      = var.resource_group_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  min_tls_version          = var.min_tls_version
  allow_blob_public_access = false
  
  identity {
    type = "SystemAssigned"
  }

  network_rules {
    default_action             = "Deny"
    ip_rules                   = []
    virtual_network_subnet_ids = []
  }
  
  blob_properties {
    versioning_enabled = true
    last_access_time_enabled = true
    change_feed_enabled = true
    
    container_delete_retention_policy {
      days = 10
    }
    delete_retention_policy {
      days = 365
    }
  }

  tags = var.tags
}