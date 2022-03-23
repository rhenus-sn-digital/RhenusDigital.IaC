terraform {
  required_version = "~>1.1.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.97.0"
    }
  }
}

# Between 1 and 127 characters long.
# Alphanumerics and hyphens (dash).
# Secrets must be unique within a Key Vault.
locals {
  name = "cosmos-${var.organization}-${var.application}${var.application != "" ? "-": ""}${var.stage}"
}

data "azurerm_client_config" "current" {}