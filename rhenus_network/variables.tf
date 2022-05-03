variable "net_resource_group_name" {
  description = "net resource group name created by the CIT."
  default     = "net_0001_IEAZU01_prod_rg"
  type        = string
}

variable "vnet_name" {
  description = "The name of the vnet where the subnets are in."
  type        = string
}

variable "app_subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "mgm_subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "server_subnet_name" {
  description = "The name of the subnet"
  type        = string
}