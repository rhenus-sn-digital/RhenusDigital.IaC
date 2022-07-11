<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_eventhub.event-hub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub) | resource |
| [azurerm_eventhub_authorization_rule.listen](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_authorization_rule) | resource |
| [azurerm_eventhub_authorization_rule.manage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_authorization_rule) | resource |
| [azurerm_eventhub_authorization_rule.send](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_authorization_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capture_archive_format"></a> [capture\_archive\_format](#input\_capture\_archive\_format) | The Blob naming convention for archiving. e.g. {Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order | `string` | `"{Namespace}/{EventHub}-{PartitionId}/{Year}-{Month}-{Day}/{Hour}:{Minute}:{Second}"` | no |
| <a name="input_capture_blob_container_name"></a> [capture\_blob\_container\_name](#input\_capture\_blob\_container\_name) | The name of the Container within the Blob Storage Account where messages should be archived. | `string` | `"eventhub"` | no |
| <a name="input_capture_storage_account_id"></a> [capture\_storage\_account\_id](#input\_capture\_storage\_account\_id) | The ID of the Blob Storage Account where messages should be archived. | `string` | n/a | yes |
| <a name="input_event_hub_name"></a> [event\_hub\_name](#input\_event\_hub\_name) | The name of the event hub | `string` | n/a | yes |
| <a name="input_event_hub_namespace_name"></a> [event\_hub\_namespace\_name](#input\_event\_hub\_namespace\_name) | The name of the namespace to create the hub in. | `string` | n/a | yes |
| <a name="input_event_hub_namespace_resource_group_name"></a> [event\_hub\_namespace\_resource\_group\_name](#input\_event\_hub\_namespace\_resource\_group\_name) | The resource group name of the namespace | `string` | n/a | yes |
| <a name="input_message_retention"></a> [message\_retention](#input\_message\_retention) | Specifies the number of days to retain the events for this Event Hub. | `number` | `7` | no |
| <a name="input_partition_count"></a> [partition\_count](#input\_partition\_count) | Specifies the current number of shards on the Event Hub. partition\_count cannot be changed unless Eventhub Namespace SKU is Premium. Premium is not set for DEV | `number` | `5` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_listen_connection_string"></a> [listen\_connection\_string](#output\_listen\_connection\_string) | n/a |
| <a name="output_manage_connection_string"></a> [manage\_connection\_string](#output\_manage\_connection\_string) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_send_connection_string"></a> [send\_connection\_string](#output\_send\_connection\_string) | n/a |
<!-- END_TF_DOCS -->