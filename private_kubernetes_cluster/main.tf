terraform {
  required_version = "~>1.1.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.6.0"
    }
  }
}

locals {
  name = "aks-${var.organization}-${var.domain}-${var.application}${var.application == "" ? "" : "-"}${var.stage}"
}