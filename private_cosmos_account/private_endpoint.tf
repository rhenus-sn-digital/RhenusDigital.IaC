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
    private_dns_zone_ids = [var.dns_zone_id]
  }

  timeouts {
    read = "1m"
  }

  tags = var.tags
}


data "azurerm_subscription" "current" {}

resource "azurerm_private_dns_a_record" "cit-dns-record" {
  provider = azurerm.cit

  name                = azurerm_cosmosdb_account.cosmos-db-account.name
  records             = [azurerm_private_endpoint.private-endpoint.private_service_connection[0].private_ip_address]
  resource_group_name = "app_0003_DNS_prod_rg"
  ttl                 = 300
  zone_name           = "privatelink.documents.azure.com"

  tags = {
    subscription = data.azurerm_subscription.current.display_name
  }
}

resource "azurerm_private_dns_a_record" "cit-dns-record-north-europe" {
  provider = azurerm.cit

  name                = "${azurerm_cosmosdb_account.cosmos-db-account.name}-northeurope"
  records             = [azurerm_private_endpoint.private-endpoint.custom_dns_configs[1].ip_addresses]
  resource_group_name = "app_0003_DNS_prod_rg"
  ttl                 = 300
  zone_name           = "privatelink.documents.azure.com"

  tags = {
    subscription = data.azurerm_subscription.current.display_name
  }
}