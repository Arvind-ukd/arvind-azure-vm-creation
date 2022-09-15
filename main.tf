resource "azurerm_network_interface" "ci" {
  count = 4
  name                = "${var.ci_nic}-${count.index}"    #"${local.computer_name}-${count.index}"
  location            = var.location
  resource_group_name = var.resoucegp

  ip_configuration {
    name =   data.azurerm_subnet.subnetci.name
    subnet_id         = data.azurerm_subnet.subnetci.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_interface" "si" {
  count = 4
  name                = "${var.si_nic}-${count.index}"    #"${local.computer_name}-${count.index}"
  location            = var.location3
  resource_group_name = var.resoucegp

  ip_configuration {
    name =   data.azurerm_subnet.subnetsi.name
    subnet_id         = data.azurerm_subnet.subnetsi.id
    private_ip_address_allocation = "Dynamic"
  }
}



resource "azurerm_network_interface" "eastus" {
  count = 4
  name                = "${var.eus_nic}-${count.index}"    #"${local.computer_name}-${count.index}"
  location            = var.location2
  resource_group_name = var.resoucegp

  ip_configuration {
    name =   data.azurerm_subnet.subneteastus.name
    subnet_id         = data.azurerm_subnet.subneteastus.id
    private_ip_address_allocation = "Dynamic"
  }
}


resource "azurerm_network_interface" "westus" {
  count = 4
  name                = "${var.wus_nic}-${count.index}"    #"${local.computer_name}-${count.index}"
  location            = var.location1
  resource_group_name = var.resoucegp

  ip_configuration {
    name =   data.azurerm_subnet.subnetwestus.name
    subnet_id         = data.azurerm_subnet.subnetwestus.id
    private_ip_address_allocation = "Dynamic"
  }
}


