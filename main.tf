terraform {
    required_providers {
        azurerm={
            source = "hashicorp/azurerm"
            version= "3.81"
        }
    }
}



resource "azurerm_resource_group" "rgref" {
  name = "kala"
  location = "east us"
}


resource "azurerm_virtual_netwrok" "networkref" {
  name  = "hubvnet"
  location  = azurerm_resource_group.rgref.location
  resourcegroup = azurerm_resource_group.rfref.name
}