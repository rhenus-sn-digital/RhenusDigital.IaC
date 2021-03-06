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
| [azurerm_cosmosdb_sql_container.sql-container](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_sql_container) | resource |
| [azurerm_cosmosdb_account.account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/cosmosdb_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | (Optional) The name of the application, to which this resource belongs (e.g. booking-service) | `string` | `""` | no |
| <a name="input_cosmos_db_account_name"></a> [cosmos\_db\_account\_name](#input\_cosmos\_db\_account\_name) | The name of the cosmos db account | `string` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | The name of the domain, to which this resource belongs (e.g. booking) | `string` | n/a | yes |
| <a name="input_partition_key_path"></a> [partition\_key\_path](#input\_partition\_key\_path) | Define a partition key. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_partition_key_version"></a> [partition\_key\_version](#input\_partition\_key\_version) | (Optional) Define a partition key version. Changing this forces a new resource to be created. Possible values are 1and 2. This should be set to 2 in order to use large partition keys. | `string` | `2` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The resource group in which the resource will be deployed. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_connection_string"></a> [connection\_string](#output\_connection\_string) | n/a |
| <a name="output_primary_key"></a> [primary\_key](#output\_primary\_key) | n/a |
<!-- END_TF_DOCS -->