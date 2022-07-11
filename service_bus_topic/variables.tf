variable "domain" {
  description = "The name of the domain, to which this resource belongs (e.g. booking)"
  type        = string
}

variable "aggregate" {
  description = "The name of the aggregate that is getting published"
  type        = string
}

variable "service_bus_id" {
  description = "The ID of the ServiceBus Namespace to create this topic in. Changing this forces a new resource to be created."
  type        = string
}

variable "message_ttl" {
  description = "The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself"
  default     = "P7D"
  type        = string
}

variable "pipeline_key_vault_id" {
  description = "Id of the pipeline key vault to save the secrets"
  type        = string
}