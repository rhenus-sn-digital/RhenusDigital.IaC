variable "cosmos_db_account_name" {
  description = "The name of the cosmos db account"
  type        = "string"
}

variable "database_name" {
  description = "Setting this will create the container in an existing database with the given name"
  default     = ""
  type        = string
}

variable "resource_group_name" {
  description = "The resource group in which the resource will be deployed."
  type        = string
}

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

variable "partition_key_path" {
  description = "Define a partition key. Changing this forces a new resource to be created."
  type        = string
}

variable "partition_key_version" {
  description = "(Optional) Define a partition key version. Changing this forces a new resource to be created. Possible values are 1and 2. This should be set to 2 in order to use large partition keys."
  default     = 2
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}