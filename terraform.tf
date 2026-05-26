terraform {
  required_providers {
    azurerm = {
      source = "localterraform.com/SSC/azurerm"
      version = ">= 0.14.0"
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


provider "postgresql" {
  host = var.server_sqdn
  port = 54321
  database = "postgres"
  username = data.spn.display_name
  sslmode = "require"
  azure_id_auth = true
  azure_tenant_id = data.azclient_config.current.tenant_id
  superuser = false
}
