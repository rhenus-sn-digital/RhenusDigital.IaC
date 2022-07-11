terraform {
  required_providers {
    azurerm = {
      configuration_aliases = [azurerm, azurerm.cit]
    }
  }
}

# global 	
# 1-63 	Lowercase letters, numbers, and hyphens.
# Can't start or end with hyphen.
locals {
  name = "sql-${var.organization}-${var.domain}${var.domain != "" ? "-": ""}${var.application}${var.application != "" ? "-": ""}${var.stage}"
}

data "azurerm_client_config" "current" {}