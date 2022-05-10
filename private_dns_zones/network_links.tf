locals {
  count_vnet_link = var.create_vnet_links && var.create_dns_zones ? 1 : 0
}

resource "azurerm_private_dns_zone_virtual_network_link" "blob-vnet-link" {
  count                 = local.count_vnet_link
  name                  = "vnet-link"
  resource_group_name   = azurerm_private_dns_zone.blob-dns-zone.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.blob-dns-zone.name
  virtual_network_id    = var.virtual_network_id
  registration_enabled  = false
  tags                  = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "vault-vnet-link" {
  count                 = local.count_vnet_link
  name                  = "vnet-link"
  resource_group_name   = azurerm_private_dns_zone.vault-dns-zone.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.vault-dns-zone.name
  virtual_network_id    = var.virtual_network_id
  registration_enabled  = false
  tags                  = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "main-vnet-link" {
  count                 = local.count_vnet_link
  name                  = "vnet-link"
  resource_group_name   = azurerm_private_dns_zone.website-dns-zone.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.website-dns-zone.name
  virtual_network_id    = var.virtual_network_id
  registration_enabled  = false
  tags                  = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "sql-vnet-link" {
  count                 = local.count_vnet_link
  name                  = "vnet-link"
  resource_group_name   = azurerm_private_dns_zone.sql-dns-zone.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.sql-dns-zone.name
  virtual_network_id    = var.virtual_network_id
  registration_enabled  = false
  tags                  = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "cosmos-vnet-link" {
  count                 = local.count_vnet_link
  name                  = "vnet-link"
  resource_group_name   = azurerm_private_dns_zone.cosmos-dns-zone.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.cosmos-dns-zone.name
  virtual_network_id    = var.virtual_network_id
  registration_enabled  = false
  tags                  = var.tags
}
