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

variable "sql_server_name" {
  description = "The id of the Ms SQL Server on which to create the database. Changing this forces a new resource to be created."
  type        = string
}

variable "sql_server_resource_group_name" {
  description = "The resource group name of the Ms SQL Server on which to create the database. Changing this forces a new resource to be created."
  type        = string
}

variable "sql_server_administrator_password" {
  description = "The administrator password to create user accounts with"
  type        = string
}

variable "elastic_pool_id" {
  description = "Specifies the ID of the elastic pool containing this database."
  type        = string
}

variable "collation" {
  description = "Specifies the collation of the database. Changing this forces a new resource to be created."
  type        = string
  default     = "SQL_Latin1_General_CP1_CS_AS"
}

variable "weekly_retention" {
  description = "The weekly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 520 weeks. e.g. P1Y, P1M, P1W or P7D."
  type        = string
  default     = "P6W"
}

variable "monthly_retention" {
  description = "The monthly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 120 months. e.g. P1Y, P1M, P4W or P30D."
  type        = string
  default     = "P12M"
}

variable "yearly_retention" {
  description = "The yearly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 10 years. e.g. P1Y, P12M, P52W or P365D."
  type        = string
  default     = "P3Y"
}

variable "week_of_year" {
  description = "The week of year to take the yearly backup in an ISO 8601 format. Value has to be between 1 and 52"
  type        = string
  default     = "16"
}

variable "auditing_storage_account_name" {
  description = "If not empty, the storage account will be used for auditing logs."
  default     = ""
  type        = string
}

variable "auditing_storage_account_resource_group_name" {
  description = "If not empty, the storage account will be used for auditing logs."
  default     = ""
  type        = string
}

variable "user_login" {
  description = "If not set, a login will be generated"
  default     = ""
  type        = string
}

variable "user_password" {
  description = "If not set, a password will be generated"
  default     = ""
  type        = string
}