terraform {
  required_version = "~>1.1.5"
  required_providers {
    azurerm = {
      source                = "hashicorp/azurerm"
      version               = "~>2.97.0"
      configuration_aliases = [azurerm.default, azurerm.cit]
    }
  }
}

locals {
  name = "st${var.organization}${var.domain}${var.application}${var.stage}"
}