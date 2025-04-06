resource "azurerm_storage_account" "devsecopsmanojtfstate" {
  name                     = "devsecopsmanojtfstate"
  resource_group_name      = azurerm_resource_group.Enclave1.name
  location                 = azurerm_resource_group.Enclave1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Dev"
  }
}


resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.devsecopsmanojtfstate.id
  container_access_type = "private"
}

resource "azurerm_storage_container" "demodata" {
  name                  = "demodata"
  storage_account_id    = azurerm_storage_account.devsecopsmanojtfstate.id
  container_access_type = "private"
}

resource "azurerm_storage_container" "megastar" {
  name                  = "megastar"
  storage_account_id    = azurerm_storage_account.devsecopsmanojtfstate.id
  container_access_type = "private"
}

resource "azurerm_storage_container" "superstar" {
  name                  = "superstar"
  storage_account_id    = azurerm_storage_account.devsecopsmanojtfstate.id
  container_access_type = "private"
<<<<<<< HEAD
}

resource "azurerm_storage_container" "powerstar" {
=======
} 
    
resource "azurerm_storage_container" "rebalstar" {
>>>>>>> 5bb4e27daa628030bdbae55f4668dce551b89a9b
  name                  = "powerstar"
  storage_account_id    = azurerm_storage_account.devsecopsmanojtfstate.id
  container_access_type = "private"
}

