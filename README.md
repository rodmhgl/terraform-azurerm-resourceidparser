## Purpose

Parses a full Azure resource ID into its constituent parts.

## Usage

```hcl
module "azure_resource_id_parser" {
  source      = "./modules/azure-resource-id-parser"
  resource_id = "/subscriptions/12345678-abcd-1eg2-ab12-a12345ab6c78/resourceGroups/rg-sample-app/providers/Microsoft.ApiManagement/service/apim-sample-name"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.parser](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_resource_id"></a> [resource\_id](#input\_resource\_id) | The Azure Resource ID to parse. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_provider_namespace"></a> [provider\_namespace](#output\_provider\_namespace) | The provider namespace extracted from the Resource ID. |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | The name of the resource group extracted from the Resource ID. |
| <a name="output_resource_name"></a> [resource\_name](#output\_resource\_name) | The resource name extracted from the Resource ID. |
| <a name="output_resource_type"></a> [resource\_type](#output\_resource\_type) | The resource type extracted from the Resource ID. |
| <a name="output_subscription_id"></a> [subscription\_id](#output\_subscription\_id) | The id of the subscription extracted from the Resource ID. |
<!-- END_TF_DOCS -->