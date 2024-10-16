terraform {
  backend "azurerm" {
    use_oidc = true
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"  # Specify the version if needed
    }
  }
}

provider "azurerm" {
  features {}

  # OIDC authentication (optional, see explanation below)
  # use_oidc            = true
  # client_id           = var.az_client_id
  # subscription_id     = var.az_subscription_id
  # tenant_id           = var.az_tenant_id
}

provider "azuread" {
  client_id = var.az_client_id
  tenant_id = var.az_tenant_id
}
