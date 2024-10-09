# providers.tf

terraform {
  backend "azurerm" {
    use_oidc = true
  }

  required_providers {
    azurerm   = {
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azuread" {

# tenant_id will be passed from main.tf or variables.tf

  client_id = var.az_client_id
  tenant_id = var.az_tenant_id

}