output "user" {
  value = mssql_user.user.login_name
}

output "password" {
  sensitive = true
  value     = mssql_login.login.password
}