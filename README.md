# Azure Resource Types Terraform Module

[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md)

This modules helps to keep consistency naming of Azure resources. The goal of this module is to provide the resource type abbreviation to be used within the name of an Azure resource.

Please refer to [RESOURCE-TYPES.md](RESOURCE-TYPES.md) for the list of supported resource types.

## Usage

```hcl
module "azure_regions" {
	source        = "github.com/TaleLearnCode/azure-resource-types"
	resource_type = "resource-group"
}
```

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name           | Description                                                   | Type     | Default | Required |
|----------------|---------------------------------------------------------------|----------|---------|:--------:|
| resource\_type | Identifier of the Azure resource type to get information for. | `string` | n/a     | yes      |

## Outputs
| Name | Description |
|------|-------------|
| name | Name details of the specified resource type with the values available as attributes. <pre>object({<br>  name (string): The name (identifier) of the Azure resource type.<br>  abbreviation (string): The abbreviation to use within the name of an Azure resource.<br>  namespace (string): The Microsoft namespace for the Azure resource type.<br>})</pre>|