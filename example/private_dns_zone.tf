module "private_dns_zone" {
  source              = "git::https://github.com/rhenus-sn-digital/RhenusDigital.IaC.git//private_dns_zones"
  resource_group_name = var.iac_resource_group_name
  tags                = local.tags
  virtual_network_id  = var.virtual_network_name
  create_dns_zones    = false
}
locals {
  tags   = {}
}
variable "virtual_network_name" {}
variable "iac_resource_group_name" {}