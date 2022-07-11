module "cosmosdb_account" {
  providers               = { azurerm = azurerm, azurerm.cit = azurerm.cit }
  source                  = "git::https://github.com/rhenus-sn-digital/RhenusDigital.IaC.git//private_cosmos_account"
  resource_group_name     = data.azurerm_resource_group.example-resource-group.name
  stage                   = var.STAGE
  subnet_id               = module.network.server_subnet_id
  tags                    = local.tags
  dns_zone_id             = module.dns.cosmos_dns_zone_id
  dns_zone_name           = module.dns.cosmos_dns_name
  dns_zone_resource_group = data.azurerm_resource_group.iac-resource-group.name
}
module "network" {
  source             = "git::https://github.com/rhenus-sn-digital/RhenusDigital.IaC.git//rhenus_network"
  vnet_name          = var.virtual_network_name
  app_subnet_name    = var.APP_SUBNET_NAME
  mgm_subnet_name    = var.MGM_SUBNET_NAME
  server_subnet_name = var.SERVER_SUBNET_NAME
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
data "azurerm_resource_group" "iac-resource-group" {
  name = "rg-IaC-${var.STAGE}"
}
locals {
  tags   = {}
  domain = ""
}
variable "STAGE" {}
variable "virtual_network_name" {}
variable "iac_resource_group_name" {}
variable "APP_SUBNET_NAME" {}
variable "MGM_SUBNET_NAME" {}
variable "SERVER_SUBNET_NAME" {}
