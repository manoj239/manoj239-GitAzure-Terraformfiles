resource "azurerm_virtual_network" "vnet1" {
  name = "vnet1"
  #Implicit Dependency for location & Resource Group on Enclave1
  location            = azurerm_resource_group.Enclave1.location
  resource_group_name = azurerm_resource_group.Enclave1.name
  #address_space       = ["10.43.0.0/16"]
  address_space = var.vnet1_address_space

  tags = {
    #environment = "Dev"
    environment = var.env
  }
}

resource "azurerm_subnet" "subnet1" {
  name                 = "${azurerm_resource_group.Enclave1.name}-subnet-1"
  resource_group_name  = azurerm_resource_group.Enclave1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.43.1.0/24"]
}

resource "azurerm_subnet" "subnet2" {
  name                 = "${azurerm_resource_group.Enclave1.name}-subnet-1"
  resource_group_name  = azurerm_resource_group.Enclave1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.43.2.0/24"]
  #vNET_Subnet.tf
}

resource "azurerm_subnet" "subnet3" {
  name                 = "${azurerm_resource_group.Enclave1.name}-subnet-1"
  resource_group_name  = azurerm_resource_group.Enclave1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.43.3.0/24"]
  #vNET_Subnet.tf
}