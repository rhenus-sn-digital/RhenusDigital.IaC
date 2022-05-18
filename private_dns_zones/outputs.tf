output "blob_dns_zone_id" {
  value = var.create_dns_zones ? azurerm_private_dns_zone.blob-dns-zone[0].id : data.azurerm_private_dns_zone.blob-dns-zone[0].id
}

output "blob_dns_zone_name" {
  value = var.create_dns_zones ? azurerm_private_dns_zone.blob-dns-zone[0].name : data.azurerm_private_dns_zone.blob-dns-zone[0].name
}

output "cosmos_dns_zone_id" {
  value = var.create_dns_zones ? azurerm_private_dns_zone.cosmos-dns-zone[0].id : data.azurerm_private_dns_zone.cosmos-dns-zone[0].id
}

output "cosmos_dns_name" {
  value = var.create_dns_zones ? azurerm_private_dns_zone.cosmos-dns-zone[0].name : data.azurerm_private_dns_zone.cosmos-dns-zone[0].name
}

output "vault_dns_zone_id" {
  value = var.create_dns_zones ? azurerm_private_dns_zone.vault-dns-zone[0].id : data.azurerm_private_dns_zone.vault-dns-zone[0].id
}

output "vault_dns_zone_name" {
  value = var.create_dns_zones ? azurerm_private_dns_zone.vault-dns-zone[0].name : data.azurerm_private_dns_zone.vault-dns-zone[0].name
}

output "sql_dns_zone_id" {
  value = var.create_dns_zones ? azurerm_private_dns_zone.sql-dns-zone[0].id : data.azurerm_private_dns_zone.sql-dns-zone[0].id
}

output "sql_dns_name" {
  value = var.create_dns_zones ? azurerm_private_dns_zone.sql-dns-zone[0].name : data.azurerm_private_dns_zone.sql-dns-zone[0].name
}

output "service_bus_dns_zone_id" {
  value = var.create_dns_zones ? azurerm_private_dns_zone.service-bus-dns-zone[0].id : data.azurerm_private_dns_zone.service-bus-dns-zone[0].id
}

output "service_bus_dns_name" {
  value = var.create_dns_zones ? azurerm_private_dns_zone.service-bus-dns-zone[0].name : data.azurerm_private_dns_zone.service-bus-dns-zone[0].name
}