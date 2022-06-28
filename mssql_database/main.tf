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

