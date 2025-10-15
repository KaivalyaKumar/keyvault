terraform {
  required_providers {
    assert = {
      source = "localterraform.com/SSC/assert"
      version = ">= 0.14.0"
      }
    azapi = {
      source = "localterraform.com/SSC/azapi"
      version = ">= 2.4.0"
    }
  required_version = ">= 1.8.0"
}
