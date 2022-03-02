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

variable "enabled_for_disk_encryption" {
  description = "Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys."
  default = true
  type = bool
}

variable "soft_delete_retention_days" {
  description = "The number of days that items should be retained for once soft-deleted. This value can be between 7 and 90 "
  default = 7
  type = number
}

variable "sku" {
  description = "he Name of the SKU used for this Key Vault. Possible values are standard and premium"
  default = "standard"
  type = string
}
