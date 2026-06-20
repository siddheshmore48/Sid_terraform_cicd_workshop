terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "stntmstfstate"
    container_name       = "sid"
    key                  = "sid.terraform.tfstate" #replace with your name
  }

}


provider "azurerm" {
  # Configuration options
  features {}


}
