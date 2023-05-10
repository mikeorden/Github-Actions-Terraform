terraform {
  required_providers {
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "=2.46.0"
    }
  }

backend "azure" {
    resource_group_name  = "friday-demo-rg"
    storage_account_name = "sttfstatemgt01"
    container_name       = "tfstate"
    key                  = "demo.terraform.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    features {}
    # subscription_id
    # client_id
    # client_secret
    # tenant_id
}

# Create a resource group
resource "azurerm_resource_group" "rg" {
    name     = "demo-rg"
    location = "West Europe"
}