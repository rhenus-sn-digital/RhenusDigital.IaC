output "id" {
  value      = azurerm_key_vault.key-vault.id
  depends_on = [
    azurerm_key_vault_access_policy.service-principal,
    azurerm_key_vault.key-vault,
    azurerm_private_dns_a_record.endpoint-dns-a-record
  ]
}