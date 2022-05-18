<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.net-resource-group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [azurerm_subnet.app-subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |
| [azurerm_subnet.mgm-subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |
| [azurerm_subnet.server-subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_subnet_name"></a> [app\_subnet\_name](#input\_app\_subnet\_name) | The name of the subnet | `string` | n/a | yes |
| <a name="input_mgm_subnet_name"></a> [mgm\_subnet\_name](#input\_mgm\_subnet\_name) | The name of the subnet | `string` | n/a | yes |
| <a name="input_net_resource_group_name"></a> [net\_resource\_group\_name](#input\_net\_resource\_group\_name) | net resource group name created by the CIT. | `string` | `"net_0001_IEAZU01_prod_rg"` | no |
| <a name="input_server_subnet_name"></a> [server\_subnet\_name](#input\_server\_subnet\_name) | The name of the subnet | `string` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | The name of the vnet where the subnets are in. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_subnet_id"></a> [app\_subnet\_id](#output\_app\_subnet\_id) | n/a |
| <a name="output_mgm_subnet_id"></a> [mgm\_subnet\_id](#output\_mgm\_subnet\_id) | n/a |
| <a name="output_server_subnet_id"></a> [server\_subnet\_id](#output\_server\_subnet\_id) | n/a |
<!-- END_TF_DOCS -->