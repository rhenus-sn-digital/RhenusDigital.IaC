variable "cosmos_db_account_name" {
  description = "The name of the cosmos db account"
  type        = string
}

variable "resource_group_name" {
  description = "The resource group in which the resource will be deployed."
  type        = string
}

variable "domain" {
  description = "The name of the domain, to which this resource belongs (e.g. booking)"
  type        = string
}

variable "application" {
  description = "(Optional) The name of the application, to which this resource belongs (e.g. booking-service)"
  type        = string
  default     = ""
}

variable "partition_key_path" {
  description = "Define a partition key. Changing this forces a new resource to be created."
  type        = string
}

variable "partition_key_version" {
  description = "(Optional) Define a partition key version. Changing this forces a new resource to be created. Possible values are 1and 2. This should be set to 2 in order to use large partition keys."
  default     = 2
  type        = string
}