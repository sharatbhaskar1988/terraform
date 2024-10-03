data "azurerm_client_config" "config" {}

resource "azurerm_key_vault" "mykv" {

  name = "${var.env}keyvaultsharat"
  location = var.location
  sku_name = "standard"
  resource_group_name = var.rg_name
  tenant_id = data.azurerm_client_config.config.tenant_id

}


resource "azurerm_key_vault_access_policy" "kvpolicy" {

  key_vault_id = azurerm_key_vault.mykv.id
  tenant_id = data.azurerm_client_config.config.tenant_id
  object_id = data.azurerm_client_config.config.object_id

  secret_permissions = [
    "Get", "Set", "Delete", "List"
  ]

}


resource "azurerm_key_vault_secret" "mysecret" {
  
  name = "mysecret"
  key_vault_id = azurerm_key_vault.mykv.id
  value = "sandeja"
  depends_on = [ azurerm_key_vault_access_policy.kvpolicy ]
}