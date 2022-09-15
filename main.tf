######################################################### Central India #####################################################################
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


resource "azurerm_windows_virtual_machine" "vmexample" {
  count =  4
  name                = "ci-vm-${count.index}"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  size                = "Standard_DS1_v2"
  admin_username      = "zadmin"
  admin_password      = "Pass@123Pass@123"
  network_interface_ids = [
    azurerm_network_interface.ci[count.index].id,
  ]

  os_disk {
    count = 4
     name =  ci-windows-[count.index]-os-disk
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
######################################################### South India #################################################################################
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


######################################################   East US #########################################################################################3
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

################################################################### West US #########################################################################
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


