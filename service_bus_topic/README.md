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
| [azurerm_key_vault_secret.topic-id](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |
| [azurerm_key_vault_secret.topic-listen-key](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |
| [azurerm_key_vault_secret.topic-mange-key](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |
| [azurerm_key_vault_secret.topic-name](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |
| [azurerm_key_vault_secret.topic-send-key](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |
| [azurerm_servicebus_topic.topic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_topic) | resource |
| [azurerm_servicebus_topic_authorization_rule.listen](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_topic_authorization_rule) | resource |
| [azurerm_servicebus_topic_authorization_rule.mange](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_topic_authorization_rule) | resource |
| [azurerm_servicebus_topic_authorization_rule.send](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_topic_authorization_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aggregate"></a> [aggregate](#input\_aggregate) | The name of the aggregate that is getting published | `string` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | The name of the domain, to which this resource belongs (e.g. booking) | `string` | n/a | yes |
| <a name="input_message_ttl"></a> [message\_ttl](#input\_message\_ttl) | The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself | `string` | `"P7D"` | no |
| <a name="input_pipeline_key_vault_id"></a> [pipeline\_key\_vault\_id](#input\_pipeline\_key\_vault\_id) | Id of the pipeline key vault to save the secrets | `string` | n/a | yes |
| <a name="input_service_bus_id"></a> [service\_bus\_id](#input\_service\_bus\_id) | The ID of the ServiceBus Namespace to create this topic in. Changing this forces a new resource to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_topic"></a> [topic](#output\_topic) | n/a |
| <a name="output_topic_connection_string_listen"></a> [topic\_connection\_string\_listen](#output\_topic\_connection\_string\_listen) | n/a |
| <a name="output_topic_connection_string_mange"></a> [topic\_connection\_string\_mange](#output\_topic\_connection\_string\_mange) | n/a |
| <a name="output_topic_connection_string_send"></a> [topic\_connection\_string\_send](#output\_topic\_connection\_string\_send) | n/a |
<!-- END_TF_DOCS -->