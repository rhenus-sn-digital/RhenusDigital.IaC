module "private-key-vault" {
  providers = { azurerm = azurerm, azurerm.cit = azurerm.cit }
  source = "git::https://github.com/rhenus-sn-digital/RhenusDigital.IaC.git//private_key_vault"
  dns_zone_id = module.dns.vault_dns_zone_id
  dns_zone_name = module.dns.vault_dns_zone_name
  dns_zone_resource_group = var.iac_resource_group_name
  domain = local.domain
  resource_group_name = data.azurerm_resource_group.example-resource-group.name
  stage = var.STAGE
  subnet_id = var.app_subnet_id
  tags = local.tags
}
module "dns" {
  source              = "git::https://github.com/rhenus-sn-digital/RhenusDigital.IaC.git//private_dns_zones"
  resource_group_name = var.iac_resource_group_name
  tags                = local.tags
  virtual_network_id  = var.virtual_network_name
  create_dns_zones    = false
}
data "azurerm_resource_group" "example-resource-group" {
  name = "rg-${local.domain}-${var.STAGE}"
}
locals {
  tags   = {}
  domain = ""
}
variable "iac_resource_group_name" {}
variable "STAGE" {}
variable "app_subnet_id" {}
variable "virtual_network_name" {}