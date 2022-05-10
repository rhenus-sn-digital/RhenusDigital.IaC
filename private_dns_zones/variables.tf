variable "resource_group_name" {
  description = "The resource group in which the resource will be deployed."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}

variable "virtual_network_id" {
  description = "The id of the virtual network"
  type        = string
}

variable "create_vnet_links" {
  default     = false
  description = "Set true to link the dns zones with the vnet"
  type        = bool
}

variable "create_dns_zones" {
  default     = false
  description = "Set true to create the dns zones"
  type        = bool
}

