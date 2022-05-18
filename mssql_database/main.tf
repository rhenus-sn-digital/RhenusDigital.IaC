terraform {
  required_version = "~>1.1.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.6.0"
    }
    mssql = {
      source = "betr-io/mssql"
      version = "~>0.2.4"
    }
  }
}
provider "mssql" {
  debug = false
}

# Scope Servers
# Alphanumerics and hyphens.
locals {
  name = "sqldb-${var.domain}-${var.application}${var.application != "" ? "-": ""}${var.stage}"
}

data "azurerm_client_config" "current" {}

data "azurerm_mssql_server" "sql-server" {
  name                = var.sql_server_name
  resource_group_name = var.sql_server_resource_group_name
}

