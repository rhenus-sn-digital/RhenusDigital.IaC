module "kubernetes-cluster" {
  source                          = "git::https://github.com/rhenus-sn-digital/RhenusDigital.IaC.git//private_kubernetes_cluster"
  domain                          = local.k8s_domain
  log_analytics_workspace_id      = azurerm_log_analytics_workspace.aks-logs.id
  node_resource_group_name        = local.kubernetes_resource_group_node_name
  resource_group_name             = data.azurerm_resource_group.example-resource-group.name
  service_principal_client_id     = var.SP_CLIENT_ID
  service_principal_client_secret = var.sp_client_secret
  stage                           = var.STAGE
  subnet_id                       = module.network.app_subnet_id
  tags                            = local.tags
}
module "network" {
  source             = "git::https://github.com/rhenus-sn-digital/RhenusDigital.IaC.git//rhenus_network"
  vnet_name          = var.virtual_network_name
  app_subnet_name    = var.APP_SUBNET_NAME
  mgm_subnet_name    = var.MGM_SUBNET_NAME
  server_subnet_name = var.SERVER_SUBNET_NAME
}
data "azurerm_resource_group" "example-resource-group" {
  name = "rg-${local.domain}-${var.STAGE}"
}
resource "azurerm_log_analytics_workspace" "aks-logs" {
  name                = local.LogAnalyticsWorkspaceName
  location            = var.Location
  resource_group_name = data.azurerm_resource_group.kubernetes.name
  sku                 = "PerGB2018"
  tags                = local.tags
}
data "azurerm_resource_group" "kubernetes" {
  name = "rg-${local.domain}-${var.STAGE}"
}
locals {
  k8s_domain                          = {}
  kubernetes_resource_group_node_name = {}
  tags                                = {}
  domain                              = ""
  LogAnalyticsWorkspaceName = {}
}
variable "STAGE" {}
variable "virtual_network_name" {}
variable "APP_SUBNET_NAME" {}
variable "MGM_SUBNET_NAME" {}
variable "SERVER_SUBNET_NAME" {}
variable "SP_CLIENT_ID" {}
variable "sp_client_secret" {}
variable "Location" {}