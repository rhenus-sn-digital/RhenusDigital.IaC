variable "stage" {
  description = "The name of the stage, in which this resource will be deployed."
  type        = string
}

variable "domain" {
  description = "The name of the domain, to which this resource belongs (e.g. booking)"
  type        = string
}

variable "application" {
  description = "(Optional) The name of the application, to which this resource belongs (e.g. booking-service)"
  default     = ""
  type        = string
}

variable "organization" {
  description = "The name of the organization (e.g. rsdn)"
  default     = "rsnd"
  type        = string
}

variable "location" {
  description = "The location of the resource for the deployment."
  type        = string
  default     = "northeurope"
}

variable "resource_group_name" {
  description = "The resource group in which the resource will be deployed."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}

variable "key_vault_id" {
  description = "The ID of the Key Vault to create a CMK. If not set, no CMK is created. Changing this forces a new resource to be created."
  default     = ""
  type        = string
}

variable "dns_zone_name" {
  description = "Specifies the Private DNS Zone to include within the private_dns_zone_group"
  type        = string
}

variable "dns_zone_id" {
  description = "Specifies the Private DNS Zone id to include within the private_dns_zone_group"
  type        = string
}

variable "dns_zone_resource_group" {
  description = "Specifies the private DNS Zones resource group"
  type        = string
}