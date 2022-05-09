output "name" {
  value = local.name
}

output "private-ip" {
  value = azurerm_private_endpoint.private-endpoint.private_service_connection[0].private_ip_address
}