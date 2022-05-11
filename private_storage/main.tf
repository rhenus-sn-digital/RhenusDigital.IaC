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
  name = "st${var.organization}${var.domain}${var.application}${var.stage}"
}

provider "azurerm" {
  alias                      = "cit"
  skip_provider_registration = true
  subscription_id            = var.cit_subscription_id
  tenant_id                  = var.cit_tenant_id
  client_id                  = var.sp_client_id
  client_secret              = var.sp_client_secret
  features {}
}