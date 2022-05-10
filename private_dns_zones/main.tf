terraform {
  required_version = "~>1.1.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.97.0"
    }
  }
}

locals {
  website_dns_name = "privatelink.azurewebsites.net"
  blob_dns_name    = "privatelink.blob.core.windows.net"
  vault_dns_name   = "privatelink.vaultcore.azure.net"
  sql_dns_name     = "privatelink.database.windows.net"
  cosmos_dns_name  = "privatelink.documents.azure.com"
}