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
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault_access_policy.mssql-server-pool](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_key_vault_key.database-encryption-key](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_key) | resource |
| [azurerm_mssql_server.mssql-server](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server) | resource |
| [azurerm_mssql_server_extended_auditing_policy.auditing](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server_extended_auditing_policy) | resource |
| [azurerm_mssql_server_transparent_data_encryption.customer-managed-key](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server_transparent_data_encryption) | resource |
| [azurerm_private_dns_a_record.endpoint-dns-a-record](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_a_record) | resource |
| [azurerm_private_endpoint.private-endpoint](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |
| [random_password.administrator-password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [random_string.administrator-login](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_private_dns_zone.dns-zone](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/private_dns_zone) | data source |
| [azurerm_storage_account.auditing_storage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/storage_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_administrator_login"></a> [administrator\_login](#input\_administrator\_login) | If not set, a login will be generated | `string` | `""` | no |
| <a name="input_administrator_login_password"></a> [administrator\_login\_password](#input\_administrator\_login\_password) | If not set, a password will be generated | `string` | `""` | no |
| <a name="input_application"></a> [application](#input\_application) | (Optional) The name of the application, to which this resource belongs (e.g. booking-service) | `string` | `""` | no |
| <a name="input_auditing_storage_account_name"></a> [auditing\_storage\_account\_name](#input\_auditing\_storage\_account\_name) | If not empty, the storage account will be used for auditing logs. | `string` | `""` | no |
| <a name="input_auditing_storage_account_resource_group_name"></a> [auditing\_storage\_account\_resource\_group\_name](#input\_auditing\_storage\_account\_resource\_group\_name) | If not empty, the storage account will be used for auditing logs. | `string` | `""` | no |
| <a name="input_dns_zone_name"></a> [dns\_zone\_name](#input\_dns\_zone\_name) | Specifies the Private DNS Zone to include within the private\_dns\_zone\_group | `string` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | The name of the domain, to which this resource belongs (e.g. booking) | `string` | n/a | yes |
| <a name="input_key_vault_id"></a> [key\_vault\_id](#input\_key\_vault\_id) | Set the key vault id, to activate CMK | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location of the resource for the deployment. | `string` | `"northeurope"` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | The name of the organization (e.g. rsdn) | `string` | `"rsnd"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The resource group in which the resource will be deployed. | `string` | n/a | yes |
| <a name="input_stage"></a> [stage](#input\_stage) | The name of the stage, in which this resource will be deployed. | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_administrator_login"></a> [administrator\_login](#output\_administrator\_login) | n/a |
| <a name="output_administrator_login_password"></a> [administrator\_login\_password](#output\_administrator\_login\_password) | n/a |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | n/a |
| <a name="output_server_name"></a> [server\_name](#output\_server\_name) | n/a |
<!-- END_TF_DOCS -->