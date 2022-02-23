resource "azurerm_mssql_database" "database" {
  name            = local.name
  elastic_pool_id = var.elastic_pool_id
  server_id       = data.azurerm_mssql_server.sql-server.id
  tags            = var.tags
  collation       = var.collation

  long_term_retention_policy {
    weekly_retention = "P6W"
    monthly_retention = "P12M"
    yearly_retention = "P3Y"
    week_of_year = "16"
  }

  lifecycle {
    prevent_destroy = true
    ignore_changes = all
  }
}