resource "azurerm_network_interface" "example" {
  count = 2
  name                = "${var.ci_nic}-${count.index}     #"${local.computer_name}-${count.index}"
  location            = var.location
  resource_group_name = var.resoucegp

  ip_configuration {
    name =   data.azurerm_subnet.subnetci.name
    subnet_id         = data.azurerm_subnet.subnetci.id
    private_ip_address_allocation = "Dynamic"
  }
}

