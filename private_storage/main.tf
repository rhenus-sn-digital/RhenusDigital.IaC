terraform {
  required_providers {
    azurerm = {
      configuration_aliases = [azurerm, azurerm.cit]
    }
  }
}

locals {
  name = "st${var.organization}${var.domain}${var.application}${var.stage}"
}
