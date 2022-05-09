# Create a Private Endpoint
resource "azurerm_private_endpoint" "private-endpoint" {
  name                = "pe-${local.name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = azurerm_mssql_server.mssql-server.name
    private_connection_resource_id = azurerm_mssql_server.mssql-server.id
    is_manual_connection           = "false"
    subresource_names              = ["sqlServer"]
  }

  private_dns_zone_group {
    name                 = "default-group"
    private_dns_zone_ids = [var.dns_zone_id]
  }

  timeouts {
    read = "1m"
  }

  tags = var.tags
}
