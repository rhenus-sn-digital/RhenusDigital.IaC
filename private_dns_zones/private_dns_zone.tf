locals {
  count_dns_zone = var.create_dns_zones ? 1 : 0
  get_dns_zone   = var.create_dns_zones ? 0 : 1
}


resource "azurerm_private_dns_zone" "blob-dns-zone" {
  count               = local.count_dns_zone
  name                = local.blob_dns_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

data "azurerm_private_dns_zone" "blob-dns-zone" {
  count               = local.get_dns_zone
  name                = local.blob_dns_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_zone" "vault-dns-zone" {
  count               = local.count_dns_zone
  name                = local.vault_dns_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

data "azurerm_private_dns_zone" "vault-dns-zone" {
  count               = local.get_dns_zone
  name                = local.vault_dns_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_zone" "website-dns-zone" {
  count               = local.count_dns_zone
  name                = local.website_dns_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

data "azurerm_private_dns_zone" "website-dns-zone" {
  count               = local.get_dns_zone
  name                = local.website_dns_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_zone" "sql-dns-zone" {
  count               = local.count_dns_zone
  name                = local.sql_dns_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

data "azurerm_private_dns_zone" "sql-dns-zone" {
  count               = local.get_dns_zone
  name                = local.sql_dns_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_zone" "cosmos-dns-zone" {
  count               = local.count_dns_zone
  name                = local.cosmos_dns_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

data "azurerm_private_dns_zone" "cosmos-dns-zone" {
  count               = local.get_dns_zone
  name                = local.cosmos_dns_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_zone" "service-bus-dns-zone" {
  count               = local.count_dns_zone
  name                = local.service_bus_dns_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

data "azurerm_private_dns_zone" "service-bus-dns-zone" {
  count               = local.get_dns_zone
  name                = local.service_bus_dns_name
  resource_group_name = var.resource_group_name
}