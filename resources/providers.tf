terraform {
  required_providers {
    # Set provider & version
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.99.0"

    }

    azapi = {
      source  = "azure/azapi"
    }

  }

  backend "azurerm" {
  }
}


