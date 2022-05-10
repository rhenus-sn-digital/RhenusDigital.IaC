output "name" {
  value = local.name
}

output "private-ip" {
  value = azurerm_private_endpoint.private-endpoint.private_service_connection[0].private_ip_address
}

output "connection_string" {
  value = azurerm_storage_account.storage-account.primary_connection_string
}