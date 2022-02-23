locals {
  create-login    = var.user_login == ""
  create-password = var.user_password == ""

  create-login-count    = local.create-login ? 1 : 0
  create-password-count = local.create-password ? 1 : 0
}

resource "random_string" "user-login" {
  count = local.create-login-count

  length  = 16
  special = false
  number  = false
}

resource "random_password" "user-password" {
  count = local.create-password-count

  length  = 36
  special = true
  number  = true
  upper   = true
  lower   = true

  min_special = 1
  min_numeric = 1
  min_upper   = 1
  min_lower   = 1

  override_special = "+*?_=!"
}

resource "mssql_login" "login" {
  server {
    host = data.azurerm_mssql_server.sql-server.fully_qualified_domain_name
    login {
      username = data.azurerm_mssql_server.sql-server.administrator_login
      password = var.sql_server_administrator_password
    }
  }
  default_database = azurerm_mssql_database.database.name
  login_name       = local.create-login ? random_string.user-login[0].result : var.user_login
  password         = local.create-password ? random_password.user-password[0].result : var.user_password

  depends_on = [azurerm_mssql_database.database]
}

resource "mssql_user" "user" {
  database = azurerm_mssql_database.database.name
  server {
    host = data.azurerm_mssql_server.sql-server.fully_qualified_domain_name
    login {
      username = data.azurerm_mssql_server.sql-server.administrator_login
      password = var.sql_server_administrator_password
    }
  }
  username   = mssql_login.login.login_name
  login_name = mssql_login.login.login_name
  roles      = ["db_owner"]

  depends_on = [mssql_login.login]
}