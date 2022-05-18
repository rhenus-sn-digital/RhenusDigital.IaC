variable "stage" {
  description = "The name of the stage, in which this resource will be deployed."
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

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}

variable "resource_group_name" {
  description = "The resource group in which the resource will be deployed."
  type        = string
}

variable "subnet_id" {
  description = "he Subnet ID which should be able to access this ServiceBus Namespace."
  type        = string
}