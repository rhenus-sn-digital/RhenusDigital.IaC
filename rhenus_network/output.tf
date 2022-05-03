output "app_subnet_id" {
  value = data.azurerm_subnet.app-subnet.id
}

output "mgm_subnet_id" {
  value = data.azurerm_subnet.mgm-subnet.id
}

output "server_subnet_id" {
  value = data.azurerm_subnet.server-subnet.id
}