resource "azurerm_resource_group" "rg" {
  name     = "sid-rg"
  location = "east us"

}
resource "azurerm_virtual_network" "vnet" {
  name                = "sid-vnet-cicd-workshop"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
}


resource "azurerm_subnet" "subnet" {
  name                 = "web-subnet"
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = azurerm_resource_group.rg.name
}
