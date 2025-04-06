data "azurerm_key_vault" "Azueusingterraform" {
  provider            = azurerm.prod-subscription
  name                = "Azueusingterraform"
  resource_group_name = "COMMON-RD"
}

resource "azurerm_key_vault_secret" "password1" {
  provider     = azurerm.prod-subscription
  name         = "password-1"
  value        = random_password.password1.result
  key_vault_id = data.azurerm_key_vault.Azueusingterraform.id
}

resource "azurerm_key_vault_secret" "password2" {
  provider     = azurerm.prod-subscription
  name         = "password-2"
  value        = random_password.password2.result
  key_vault_id = data.azurerm_key_vault.Azueusingterraform.id
  #key_vault_id = data.azurerm_key_vault.Azueusingterraform.id
}

resource "azurerm_key_vault_secret" "password3" {
  provider     = azurerm.prod-subscription
  name         = "password-3"
  value        = random_password.password3.result
  key_vault_id = data.azurerm_key_vault.Azueusingterraform.id
}


