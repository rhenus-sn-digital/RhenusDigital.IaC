<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>2.97.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>2.97.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.private-kubernetes](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | (Optional) The name of the application, to which this resource belongs (e.g. booking-service) | `string` | `""` | no |
| <a name="input_default_node_pool_enable_auto_scaling"></a> [default\_node\_pool\_enable\_auto\_scaling](#input\_default\_node\_pool\_enable\_auto\_scaling) | Should the Kubernetes Auto Scaler be enabled for this Node Pool? Defaults to true. | `bool` | `true` | no |
| <a name="input_default_node_pool_max_count"></a> [default\_node\_pool\_max\_count](#input\_default\_node\_pool\_max\_count) | The maximum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000 | `number` | `3` | no |
| <a name="input_default_node_pool_min_count"></a> [default\_node\_pool\_min\_count](#input\_default\_node\_pool\_min\_count) | The minimum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000 | `number` | `1` | no |
| <a name="input_default_node_pool_name"></a> [default\_node\_pool\_name](#input\_default\_node\_pool\_name) | The name which should be used for the default Kubernetes Node Pool. Changing this forces a new resource to be created. | `string` | `"default"` | no |
| <a name="input_default_node_pool_type"></a> [default\_node\_pool\_type](#input\_default\_node\_pool\_type) | The type of Node Pool which should be created. Possible values are AvailabilitySet and VirtualMachineScaleSets. Defaults to VirtualMachineScaleSets. | `string` | `"VirtualMachineScaleSets"` | no |
| <a name="input_default_node_pool_vm_size"></a> [default\_node\_pool\_vm\_size](#input\_default\_node\_pool\_vm\_size) | The size of the Virtual Machine, such as Standard\_DS2\_v2 | `string` | `"Standard_B2s"` | no |
| <a name="input_domain"></a> [domain](#input\_domain) | The name of the domain, to which this resource belongs (e.g. booking) | `string` | n/a | yes |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | The Kubernetes version to setup the cluster with. | `string` | `"1.22.6"` | no |
| <a name="input_location"></a> [location](#input\_location) | The location of the resource for the deployment. | `string` | `"northeurope"` | no |
| <a name="input_log_analytics_workspace_id"></a> [log\_analytics\_workspace\_id](#input\_log\_analytics\_workspace\_id) | The ID of the Log Analytics Workspace which the OMS Agent should send data to. | `string` | n/a | yes |
| <a name="input_node_resource_group_name"></a> [node\_resource\_group\_name](#input\_node\_resource\_group\_name) | The resource group in which the resource will be deployed. | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | The name of the organization (e.g. rsdn) | `string` | `"rsdn"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The resource group in which the resource will be deployed. | `string` | n/a | yes |
| <a name="input_service_principal_client_id"></a> [service\_principal\_client\_id](#input\_service\_principal\_client\_id) | The service principal client id to use, to create the k8s. This is needed, because we dont have the permission to assign roles | `string` | n/a | yes |
| <a name="input_service_principal_client_secret"></a> [service\_principal\_client\_secret](#input\_service\_principal\_client\_secret) | The service principal client secret to use, to create the k8s. This is needed, because we dont have the permission to assign roles | `string` | n/a | yes |
| <a name="input_stage"></a> [stage](#input\_stage) | The name of the stage, in which this resource will be deployed. | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
<!-- END_TF_DOCS -->