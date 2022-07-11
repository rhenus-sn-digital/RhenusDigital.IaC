locals {
  create-login    = var.administrator_login == ""
  create-password = var.administrator_login_password == ""

  create-login-count    = local.create-login ? 1 : 0
  create-password-count = local.create-password ? 1 : 0
}

resource "random_string" "administrator-login" {
  count = local.create-login-count

  length  = 16
  special = false
  numeric = false
}

resource "random_password" "administrator-password" {
  count = local.create-password-count
  
  length  = 36
  special = true
  numeric = true
  upper   = true
  lower   = true

  min_special = 1
  min_numeric = 1
  min_upper   = 1
  min_lower   = 1

  override_special = "+*?_=!"
}
