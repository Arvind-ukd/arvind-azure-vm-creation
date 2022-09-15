resource "azurerm_network_interface" "example" {
  count = 2
  name                = "${var.ci_nic}"
  location            = var.location
  resource_group_name = var.resoucegp

  ip_configuration {
    subnet_id                     = data.azurerm_subnet.subnetci.id
    private_ip_address_allocation = "Dynamic"
  }
}

