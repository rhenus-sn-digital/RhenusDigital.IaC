<!-- BEGIN_TF_DOCS -->

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_secret.ps-acr-rhenus-digital](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_host"></a> [acr\_host](#input\_acr\_host) | The ACR Host to create a pull secret for? | `string` | n/a | yes |
| <a name="input_acr_pass"></a> [acr\_pass](#input\_acr\_pass) | The ACR pass to create a pull secret for? | `string` | n/a | yes |
| <a name="input_acr_user"></a> [acr\_user](#input\_acr\_user) | The ACR user to create a pull secret for? | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the pull-secret. | `string` | `"ps-acr-rhenus-digital"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | In which namespace should the pull secret get deployed? | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pull-secret-name"></a> [pull-secret-name](#output\_pull-secret-name) | n/a |

<!-- END_TF_DOCS -->