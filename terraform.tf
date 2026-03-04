terraform {
  required_providers {
    azurerm = {
      source = "localterraform.com/SSC/azurerm"
      version = ">= 0.14.0"
      configuration_aliases = [azurerm.hubsub, azurerm.pepsub]
      }
    assert = {
      source = "localterraform.com/SSC/assert"
      version = ">= 0.14.0"
      }
    azapi = {
      source = "localterraform.com/SSC/azapi"
      version = ">= 2.4.0"
    }
  }
  required_version = ">= 1.8.0"
}
