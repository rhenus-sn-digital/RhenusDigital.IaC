variable "name" {
  description = "Name of the pull-secret."
  type        = string
  default     = "ps-acr-rhenus-digital"
}

variable "namespace" {
  description = "In which namespace should the pull secret get deployed?"
  type        = string
}

variable "acr_host" {
  description = "The ACR Host to create a pull secret for?"
  type        = string
}

variable "acr_user" {
  description = "The ACR user to create a pull secret for?"
  type        = string
}

variable "acr_pass" {
  description = "The ACR pass to create a pull secret for?"
  type        = string
}