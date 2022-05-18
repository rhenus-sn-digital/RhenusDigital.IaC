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
  name = var.domain
}

data "azurerm_cosmosdb_account" "account" {
  name                = var.cosmos_db_account_name
  resource_group_name = var.resource_group_name
}