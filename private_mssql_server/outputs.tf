output "administrator_login" {
  value = local.create-login ? random_string.administrator-login[0].result : var.administrator_login
}

output "administrator_login_password" {
  value = local.create-login ? random_password.administrator-password[0].result : var.administrator_login_password
}


output "server_name" {
  value = azurerm_mssql_server.mssql-server.name
}

output "server_host" {
  value = azurerm_mssql_server.mssql-server.fully_qualified_domain_name
}

output "resource_group_name" {
  value = azurerm_mssql_server.mssql-server.resource_group_name
}
output "server_id" {
  value = azurerm_mssql_server.mssql-server.id
}