<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.1.5 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.7.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.7.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_namespace.domain-namespace](https://registry.terraform.io/providers/hashicorp/kubernetes/2.7.1/docs/resources/namespace) | resource |
| [kubernetes_secret.ps-acr-rhenus-digital](https://registry.terraform.io/providers/hashicorp/kubernetes/2.7.1/docs/resources/secret) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_host"></a> [acr\_host](#input\_acr\_host) | The ACR Host to create a pull secret for? | `string` | n/a | yes |
| <a name="input_acr_pass"></a> [acr\_pass](#input\_acr\_pass) | The ACR pass to create a pull secret for? | `string` | n/a | yes |
| <a name="input_acr_user"></a> [acr\_user](#input\_acr\_user) | The ACR user to create a pull secret for? | `string` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | The name of the domain, to which this resource belongs (e.g. booking) | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->