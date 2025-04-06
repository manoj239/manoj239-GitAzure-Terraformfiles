terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.24.0"

    }
  }

  backend "azurerm" {
    resource_group_name  = "Enclave1"
    storage_account_name = "devsecopsmanojtfstate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}


provider "azurerm" {
  #  subscription_id = "b8f51546-b91a-4cf3-bf28-802929fb7f38"
  features {}
}

#provider "azurerm" {
#  alias           = "prod-subscription"
#  subscription_id = "b8f51546-b91a-4cf3-bf28-802929fb7f38"
#  features {}
#} 
