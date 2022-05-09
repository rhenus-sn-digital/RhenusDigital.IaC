## Naming
kv-`organization`-`domain`-`application`-`stage`

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
| [azurerm_key_vault.key-vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) | resource |
| [azurerm_key_vault_access_policy.service-principal](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_private_endpoint.private-endpoint](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | (Optional) The name of the application, to which this resource belongs (e.g. booking-service) | `string` | `""` | no |
| <a name="input_dns_zone_id"></a> [dns\_zone\_id](#input\_dns\_zone\_id) | Specifies the Private DNS Zone id to include within the private\_dns\_zone\_group | `string` | n/a | yes |
| <a name="input_dns_zone_name"></a> [dns\_zone\_name](#input\_dns\_zone\_name) | Specifies the Private DNS Zone to include within the private\_dns\_zone\_group | `string` | n/a | yes |
| <a name="input_dns_zone_resource_group"></a> [dns\_zone\_resource\_group](#input\_dns\_zone\_resource\_group) | Specifies the private DNS Zones resource group | `string` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | The name of the domain, to which this resource belongs (e.g. booking) | `string` | n/a | yes |
| <a name="input_enabled_for_disk_encryption"></a> [enabled\_for\_disk\_encryption](#input\_enabled\_for\_disk\_encryption) | Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys. | `bool` | `true` | no |
| <a name="input_location"></a> [location](#input\_location) | The location of the resource for the deployment. | `string` | `"northeurope"` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | The name of the organization (e.g. rsdn) | `string` | `"rsnd"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The resource group in which the resource will be deployed. | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | he Name of the SKU used for this Key Vault. Possible values are standard and premium | `string` | `"standard"` | no |
| <a name="input_soft_delete_retention_days"></a> [soft\_delete\_retention\_days](#input\_soft\_delete\_retention\_days) | The number of days that items should be retained for once soft-deleted. This value can be between 7 and 90 | `number` | `7` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | The name of the stage, in which this resource will be deployed. | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_private-ip"></a> [private-ip](#output\_private-ip) | n/a |
<!-- END_TF_DOCS -->