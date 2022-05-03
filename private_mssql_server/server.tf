resource "azurerm_mssql_server" "mssql-server" {
  name = local.name

  resource_group_name = var.resource_group_name
  location            = var.location

  public_network_access_enabled = false
  administrator_login           = local.create-login ? random_string.administrator-login[0].result : var.administrator_login
  administrator_login_password  = local.create-password ? random_password.administrator-password[0].result : var.administrator_login_password

  version             = "12.0"
  minimum_tls_version = "1.2"

  identity {
    type = "SystemAssigned"
  }

  lifecycle {
    prevent_destroy = true
    ignore_changes  = [
      restorable_dropped_database_ids
    ]
  }

  tags = var.tags
}

