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

variable "kubernetes_version" {
  description = "The Kubernetes version to setup the cluster with."
  default     = "1.22.6"
  type        = string
}

variable "node_resource_group_name" {
  description = "The resource group in which the resource will be deployed."
  type        = string
}

variable "default_node_pool_name" {
  description = "The name which should be used for the default Kubernetes Node Pool. Changing this forces a new resource to be created."
  type        = string
  default     = "default"
}

variable "default_node_pool_type" {
  description = "The type of Node Pool which should be created. Possible values are AvailabilitySet and VirtualMachineScaleSets. Defaults to VirtualMachineScaleSets."
  type        = string
  default     = "VirtualMachineScaleSets"
}

variable "default_node_pool_vm_size" {
  description = "The size of the Virtual Machine, such as Standard_DS2_v2"
  type        = string
  default     = "Standard_B2s"
}

variable "default_node_pool_enable_auto_scaling" {
  description = "Should the Kubernetes Auto Scaler be enabled for this Node Pool? Defaults to true."
  type        = bool
  default     = true
}

variable "default_node_pool_min_count" {
  description = "The minimum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000"
  type        = number
  default     = 1
}

variable "default_node_pool_max_count" {
  description = "The maximum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000"
  type        = number
  default     = 3
}

variable "service_principal_client_id" {
  description = "The service principal client id to use, to create the k8s. This is needed, because we dont have the permission to assign roles"
  type        = string
}

variable "service_principal_client_secret" {
  description = "The service principal client secret to use, to create the k8s. This is needed, because we dont have the permission to assign roles"
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics Workspace which the OMS Agent should send data to."
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