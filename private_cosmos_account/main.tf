terraform {
  required_providers {
    azurerm = {
      configuration_aliases = [azurerm, azurerm.cit]
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