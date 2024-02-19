terraform {
  required_providers {
  }
}

module "resource_group" {
  source        = "../"
  #source        = "git::git@ssh.dev.azure.com:v3/JasperEnginesTransmissions/JETDEV/TerraformModule_AzureResourceTypes"
  resource_type = "resource-group"
}

output "resource_group" {
  value = module.resource_group
}