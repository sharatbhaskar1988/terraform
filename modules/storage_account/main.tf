resource "azurerm_storage_account" "example" {
  name                     = "sandastorage1988"
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}