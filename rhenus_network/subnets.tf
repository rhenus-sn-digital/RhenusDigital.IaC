data "azurerm_subnet" "app-subnet" {
  name                 = var.app_subnet_name
  resource_group_name  = data.azurerm_resource_group.net-resource-group.name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
}

data "azurerm_subnet" "mgm-subnet" {
  name                 = var.mgm_subnet_name
  resource_group_name  = data.azurerm_resource_group.net-resource-group.name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
}

data "azurerm_subnet" "server-subnet" {
  name                 = var.server_subnet_name
  resource_group_name  = data.azurerm_resource_group.net-resource-group.name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
}