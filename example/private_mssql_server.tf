module "sql-server" {
  providers               = { azurerm = azurerm, azurerm.cit = azurerm.cit }
  source                  = "git::https://github.com/rhenus-sn-digital/RhenusDigital.IaC.git//private_mssql_server"
  dns_zone_id             = module.dns.sql_dns_zone_id
  dns_zone_name           = module.dns.sql_dns_name
  dns_zone_resource_group = data.azurerm_resource_group.iac-resource-group.name
  key_vault_id            = data.azurerm_key_vault.iac-keyvault.id
  resource_group_name     = azurerm_resource_group.rg-db.name
  stage                   = var.STAGE
  subnet_id               = module.network.server_subnet_id
  tags                    = local.tags
  depends_on = [azurerm_resource_group.rg-db]
}

module "dns" {
  source              = "git::https://github.com/rhenus-sn-digital/RhenusDigital.IaC.git//private_dns_zones"
  resource_group_name = var.iac_resource_group_name
  tags                = local.tags
  virtual_network_id  = var.virtual_network_name
  create_dns_zones    = false
}
data "azurerm_resource_group" "iac-resource-group" {
  name = "rg-IaC-${var.STAGE}"
}
data "azurerm_key_vault" "iac-keyvault" {
  name                = local.terraform_central_key_vault_name
  resource_group_name = data.azurerm_resource_group.iac-resource-group.name
}
resource "azurerm_resource_group" "rg-db" {
  location = var.LOCATION
  name     = local.database_domain_resource_group_name
  tags     = local.tags
}
locals {
  terraform_central_key_vault_name = {}
  database_domain_resource_group_name = {}
  tags = {}
}
variable "STAGE" {}
variable "LOCATION" {}
variable "virtual_network_name" {}