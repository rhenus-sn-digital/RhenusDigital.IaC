<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_azurerm.cit"></a> [azurerm.cit](#provider\_azurerm.cit) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_private_dns_a_record.cit-dns-record](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_a_record) | resource |
| [azurerm_private_endpoint.private-endpoint](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |
| [azurerm_servicebus_namespace.message-hub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_namespace) | resource |
| [azurerm_servicebus_namespace_network_rule_set.message-hub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_namespace_network_rule_set) | resource |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | (Optional) The name of the application, to which this resource belongs (e.g. booking-service) | `string` | `""` | no |
| <a name="input_dns_zone_id"></a> [dns\_zone\_id](#input\_dns\_zone\_id) | Specifies the Private DNS Zone id to include within the private\_dns\_zone\_group | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location of the resource for the deployment. | `string` | `"northeurope"` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | The name of the organization (e.g. rsdn) | `string` | `"rsnd"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The resource group in which the resource will be deployed. | `string` | n/a | yes |
| <a name="input_stage"></a> [stage](#input\_stage) | The name of the stage, in which this resource will be deployed. | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | he Subnet ID which should be able to access this ServiceBus Namespace. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_bus_connection_string"></a> [service\_bus\_connection\_string](#output\_service\_bus\_connection\_string) | n/a |
| <a name="output_service_bus_id"></a> [service\_bus\_id](#output\_service\_bus\_id) | n/a |
| <a name="output_service_bus_managed_key"></a> [service\_bus\_managed\_key](#output\_service\_bus\_managed\_key) | n/a |
<!-- END_TF_DOCS -->