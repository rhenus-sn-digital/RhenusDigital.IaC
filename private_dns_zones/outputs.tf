output "blob_dns_zone_id" {
  value = azurerm_private_dns_zone.blob-dns-zone.id
}

output "blob_dns_zone_name" {
  value = azurerm_private_dns_zone.blob-dns-zone.name
}

output "cosmos_dns_zone_id" {
  value = azurerm_private_dns_zone.cosmos-dns-zone.id
}

output "cosmos_dns_name" {
  value = azurerm_private_dns_zone.cosmos-dns-zone.name
}

output "vault_dns_zone_id" {
  value = azurerm_private_dns_zone.vault-dns-zone.id
}

output "vault_dns_zone_name" {
  value = azurerm_private_dns_zone.vault-dns-zone.name
}

output "sql_dns_zone_id" {
  value = azurerm_private_dns_zone.sql-dns-zone.id
}

output "sql_dns_name" {
  value = azurerm_private_dns_zone.sql-dns-zone.name
}