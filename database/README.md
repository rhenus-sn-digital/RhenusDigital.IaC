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
| [azurerm_mssql_database.database](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_database) | resource |
| [azurerm_mssql_database_extended_auditing_policy.database-auditing](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_database_extended_auditing_policy) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_storage_account.auditing_storage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/storage_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | (Optional) The name of the application, to which this resource belongs (e.g. booking-service) | `string` | `""` | no |
| <a name="input_auditing_storage_account_name"></a> [auditing\_storage\_account\_name](#input\_auditing\_storage\_account\_name) | If not empty, the storage account will be used for auditing logs. | `string` | `""` | no |
| <a name="input_auditing_storage_account_resource_group_name"></a> [auditing\_storage\_account\_resource\_group\_name](#input\_auditing\_storage\_account\_resource\_group\_name) | If not empty, the storage account will be used for auditing logs. | `string` | `""` | no |
| <a name="input_collation"></a> [collation](#input\_collation) | Specifies the collation of the database. Changing this forces a new resource to be created. | `string` | `"SQL_Latin1_General_CP1_CS_AS"` | no |
| <a name="input_domain"></a> [domain](#input\_domain) | The name of the domain, to which this resource belongs (e.g. booking) | `string` | n/a | yes |
| <a name="input_elastic_pool_id"></a> [elastic\_pool\_id](#input\_elastic\_pool\_id) | Specifies the ID of the elastic pool containing this database. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location of the resource for the deployment. | `string` | n/a | yes |
| <a name="input_monthly_retention"></a> [monthly\_retention](#input\_monthly\_retention) | The monthly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 120 months. e.g. P1Y, P1M, P4W or P30D. | `string` | `"P12M"` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | The name of the organization (e.g. rsdn) | `string` | `"rsdn"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The resource group in which the resource will be deployed. | `string` | n/a | yes |
| <a name="input_sql_server_id"></a> [sql\_server\_id](#input\_sql\_server\_id) | The id of the Ms SQL Server on which to create the database. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_stage"></a> [stage](#input\_stage) | The name of the stage, in which this resource will be deployed. | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | n/a | yes |
| <a name="input_week_of_year"></a> [week\_of\_year](#input\_week\_of\_year) | The week of year to take the yearly backup in an ISO 8601 format. Value has to be between 1 and 52 | `string` | `"16"` | no |
| <a name="input_weekly_retention"></a> [weekly\_retention](#input\_weekly\_retention) | The weekly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 520 weeks. e.g. P1Y, P1M, P1W or P7D. | `string` | `"P6W"` | no |
| <a name="input_yearly_retention"></a> [yearly\_retention](#input\_yearly\_retention) | The yearly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 10 years. e.g. P1Y, P12M, P52W or P365D. | `string` | `"P3Y"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->