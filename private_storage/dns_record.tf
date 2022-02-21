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
  name = var.dns_zone_name
}