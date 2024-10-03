terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
}

provider "azurerm" {

  features {}
  subscription_id = "bc7add54-68b1-4720-a761-75ae4c82e200"

}