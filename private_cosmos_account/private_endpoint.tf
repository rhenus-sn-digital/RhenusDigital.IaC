resource "azurerm_private_endpoint" "private-endpoint" {
  name                = "pe-${local.name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = azurerm_cosmosdb_account.cosmos-db-account.name
    private_connection_resource_id = azurerm_cosmosdb_account.cosmos-db-account.id
    is_manual_connection           = "false"
    subresource_names              = ["sql"]
  }

  private_dns_zone_group {
    name                 = "default-group"
    private_dns_zone_ids = [data.azurerm_private_dns_zone.dns-zone.id]
  }
  
  timeouts {
    read = "5m"
  }

  tags = var.tags
}

resource "azurerm_private_dns_a_record" "endpoint-dns-a-record" {
  name                = lower(local.name)
  zone_name           = data.azurerm_private_dns_zone.dns-zone.name
  resource_group_name = data.azurerm_private_dns_zone.dns-zone.resource_group_name
  ttl                 = 300
  records             = [
    azurerm_private_endpoint.private-endpoint.private_service_connection[0].private_ip_address
  ]

  depends_on = [
    azurerm_private_endpoint.private-endpoint
  ]

  tags = var.tags
}

data "azurerm_private_dns_zone" "dns-zone" {
  name = "privatelink.documents.azure.com"
}