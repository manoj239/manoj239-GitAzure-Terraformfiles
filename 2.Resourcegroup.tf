resource "azurerm_resource_group" "Enclave1" {
  name     = var.rg1_name
  location = var.rg1_location
  tags = {
    environment = var.env
  }
}

resource "azurerm_resource_group" "Enclave2" {
  name     = var.rg2_name
  location = var.rg2_location
}