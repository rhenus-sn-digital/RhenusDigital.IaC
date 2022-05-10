output "user" {
  value = mssql_user.user.login_name
}

output "password" {
  sensitive = true
  value     = mssql_login.login.password
}

output "connection_string" {
  value = "Server=tcp:${var.sql_server_name}.database.windows.net,1433;Initial Catalog=${local.name};Persist Security Info=False;User ID=${mssql_user.user.login_name};Password=${mssql_login.login.password};MultipleActiveResultSets=True;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
}