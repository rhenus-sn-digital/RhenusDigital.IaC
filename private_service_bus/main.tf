terraform {
  required_providers {
    azurerm = {
      configuration_aliases = [azurerm, azurerm.cit]
    }
  }
}

locals {
  name = "sb-${var.organization}-${var.application}${var.application != "" ? "-": ""}${var.stage}"
}