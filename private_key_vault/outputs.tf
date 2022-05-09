output "id" {
  value      = azurerm_key_vault.key-vault.id
  depends_on = [
    azurerm_key_vault_access_policy.service-principal,
    azurerm_key_vault.key-vault,
  ]
}

output "private-ip" {
  value = azurerm_private_endpoint.private-endpoint.private_service_connection[0].private_ip_address
}