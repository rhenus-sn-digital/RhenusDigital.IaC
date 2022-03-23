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