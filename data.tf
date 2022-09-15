data "azurerm_subnet" "subnetci" {
  name                 = "subnet1"
  virtual_network_name = "centralindia-vnet"
  resource_group_name  =  var.resoucegp
}

output "subnet_id" {
  value = data.azurerm_subnet.subnetci.id
}

data "azurerm_subnet" "subnetsi" {
  name                 = "subnet1"
  virtual_network_name = "southindia-vnet"
  resource_group_name  =  var.resoucegp
}

output "subnet_id-si" {
  value = data.azurerm_subnet.subnetsi.id
}

data "azurerm_subnet" "subneteastus" {
  name                 = "subnet1"
  virtual_network_name = "eastus-vnet"
  resource_group_name  =  var.resoucegp
}

output "subnet_id-eus" {
  value = data.azurerm_subnet.subneteastus.id
}

data "azurerm_subnet" "subnetwestus" {
  name                 = "subnet1"
  virtual_network_name = "westus-vnet"
  resource_group_name  =  var.resoucegp
}

output "subnet_id-wus" {
  value = data.azurerm_subnet.subnetwestus.id
}