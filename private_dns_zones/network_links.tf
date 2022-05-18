locals {
  count_vnet_link = var.create_vnet_links && var.create_dns_zones ? 1 : 0
}

resource "azurerm_private_dns_zone_virtual_network_link" "blob-vnet-link" {
  count                 = local.count_vnet_link
  name                  = "vnet-link"
  resource_group_name   = var.create_dns_zones ? azurerm_private_dns_zone.blob-dns-zone[0].resource_group_name : data.azurerm_private_dns_zone.blob-dns-zone[0].resource_group_name
  private_dns_zone_name = var.create_dns_zones ? azurerm_private_dns_zone.blob-dns-zone[0].name : data.azurerm_private_dns_zone.blob-dns-zone[0].name
  virtual_network_id    = var.virtual_network_id
  registration_enabled  = false
  tags                  = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "vault-vnet-link" {
  count                 = local.count_vnet_link
  name                  = "vnet-link"
  resource_group_name   = var.create_dns_zones ? azurerm_private_dns_zone.vault-dns-zone[0].resource_group_name : data.azurerm_private_dns_zone.vault-dns-zone[0].resource_group_name
  private_dns_zone_name = var.create_dns_zones ? azurerm_private_dns_zone.vault-dns-zone[0].name : data.azurerm_private_dns_zone.vault-dns-zone[0].name
  virtual_network_id    = var.virtual_network_id
  registration_enabled  = false
  tags                  = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "main-vnet-link" {
  count                 = local.count_vnet_link
  name                  = "vnet-link"
  resource_group_name   = var.create_dns_zones ? azurerm_private_dns_zone.website-dns-zone[0].resource_group_name : data.azurerm_private_dns_zone.website-dns-zone[0].resource_group_name
  private_dns_zone_name = var.create_dns_zones ? azurerm_private_dns_zone.website-dns-zone[0].name : data.azurerm_private_dns_zone.website-dns-zone[0].name
  virtual_network_id    = var.virtual_network_id
  registration_enabled  = false
  tags                  = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "sql-vnet-link" {
  count                 = local.count_vnet_link
  name                  = "vnet-link"
  resource_group_name   = var.create_dns_zones ? azurerm_private_dns_zone.sql-dns-zone[0].resource_group_name : data.azurerm_private_dns_zone.sql-dns-zone[0].resource_group_name
  private_dns_zone_name = var.create_dns_zones ? azurerm_private_dns_zone.sql-dns-zone[0].name : data.azurerm_private_dns_zone.sql-dns-zone[0].name
  virtual_network_id    = var.virtual_network_id
  registration_enabled  = false
  tags                  = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "cosmos-vnet-link" {
  count                 = local.count_vnet_link
  name                  = "vnet-link"
  resource_group_name   = var.create_dns_zones ? azurerm_private_dns_zone.cosmos-dns-zone[0].resource_group_name : data.azurerm_private_dns_zone.cosmos-dns-zone[0].resource_group_name
  private_dns_zone_name = var.create_dns_zones ? azurerm_private_dns_zone.cosmos-dns-zone[0].name : data.azurerm_private_dns_zone.cosmos-dns-zone[0].name
  virtual_network_id    = var.virtual_network_id
  registration_enabled  = false
  tags                  = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "service-bus-vnet-link" {
  count                 = local.count_vnet_link
  name                  = "vnet-link"
  resource_group_name   = var.create_dns_zones ? azurerm_private_dns_zone.service-bus-dns-zone[0].resource_group_name : data.azurerm_private_dns_zone.service-bus-dns-zone[0].resource_group_name
  private_dns_zone_name = var.create_dns_zones ? azurerm_private_dns_zone.service-bus-dns-zone[0].name : data.azurerm_private_dns_zone.service-bus-dns-zone[0].name
  virtual_network_id    = var.virtual_network_id
  registration_enabled  = false
  tags                  = var.tags
}