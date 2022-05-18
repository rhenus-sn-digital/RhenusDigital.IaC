terraform {
  required_version = "~>1.1.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.6.0"
    }
  }
}

data "azurerm_resource_group" "net-resource-group" {
  name = var.net_resource_group_name
}

