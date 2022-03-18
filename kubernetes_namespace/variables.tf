variable "domain" {
  description = "The name of the domain, to which this resource belongs (e.g. booking)"
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