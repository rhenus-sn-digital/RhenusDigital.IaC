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
  default     = "rsdn"
  type        = string
}

variable "location" {
  description = "The location of the resource for the deployment."
  type        = string
}

variable "resource_group_name" {
  description = "The resource group in which the resource will be deployed."
  type        = string
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created."
  default     = "Standard"
  type        = string
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS. Changing this forces a new resource to be created when types LRS, GRS and RAGRS are changed to ZRS, GZRS or RAGZRS and vice versa."
  type        = string
  default     = "LRS"
}

variable "min_tls_version" {
  description = "he minimum supported TLS version for the storage account. Possible values are TLS1_0, TLS1_1, and TLS1_2"
  default     = "TLS1_2"
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

variable "dns_zone_ids" {
  description = "Specifies the list of Private DNS Zones to include within the private_dns_zone_group"
  type = set(string)
}

variable "key_vault_id" {
  description = "The ID of the Key Vault to create a CMK. Changing this forces a new resource to be created."
  default = ""
  type = string
}