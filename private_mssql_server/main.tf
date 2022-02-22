terraform {
  required_version = "~>1.1.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.97.0"
    }
  }
}

# global 	
# 1-63 	Lowercase letters, numbers, and hyphens.
# Can't start or end with hyphen.
locals {
  name = "kv-${var.organization}-${var.domain}-${var.application}${var.application != "" ? "-": ""}${var.stage}"
}

data "azurerm_client_config" "current" {}