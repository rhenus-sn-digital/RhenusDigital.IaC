variable "event_hub_name" {
  description = "The name of the event hub"
  type        = string
}

variable "event_hub_namespace_name" {
  description = "The name of the namespace to create the hub in."
  type        = string
}
variable "event_hub_namespace_resource_group_name" {
  description = "The resource group name of the namespace"
  type        = string
}

variable "partition_count" {
  description = "Specifies the current number of shards on the Event Hub. partition_count cannot be changed unless Eventhub Namespace SKU is Premium. Premium is not set for DEV"
  default     = 5
  type        = number
}

variable "message_retention" {
  description = "Specifies the number of days to retain the events for this Event Hub."
  default     = 7
  type        = number
}

variable "capture_blob_container_name" {
  description = "The name of the Container within the Blob Storage Account where messages should be archived."
  default     = "eventhub"
  type        = string
}

variable "capture_storage_account_id" {
  description = "The ID of the Blob Storage Account where messages should be archived."
  type        = string
}

variable "capture_archive_format" {
  description = "The Blob naming convention for archiving. e.g. {Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order"
  type        = string
  default     = "{Namespace}/{EventHub}-{PartitionId}/{Year}-{Month}-{Day}/{Hour}:{Minute}:{Second}"
}