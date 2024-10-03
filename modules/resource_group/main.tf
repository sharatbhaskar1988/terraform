resource "azurerm_resource_group" "rg" {
    name = "${var.env}-sharatrg"
    location = var.location
}