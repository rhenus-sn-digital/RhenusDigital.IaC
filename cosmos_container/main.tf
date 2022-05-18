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
  database_name = var.domain
  name          = var.application
}

data "azurerm_cosmosdb_account" "account" {
  name                = var.cosmos_db_account_name
  resource_group_name = var.resource_group_name
}