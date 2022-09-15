data "azurerm_subnet" "subnetci" {
  name                 = "subnet1"
  virtual_network_name = "centralindia-vnet"
  resource_group_name  =  var.resoucegp
}

output "subnet_id" {
  value = data.azurerm_subnet.subnetci.id
}