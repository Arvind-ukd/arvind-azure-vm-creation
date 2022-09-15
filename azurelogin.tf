terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.22.0"
    }
  }
}
provider "azurerm" {
  features {}

  subscription_id   = "12b16f9a-19a5-4afe-af57-c3879d8ecef7"
  tenant_id         = "f95b7978-c317-4d82-9ae2-727669715e0a"
  client_id         = "1370be98-6d41-4153-aac4-9551f19e1692"
  client_secret     = "bw98Q~3d5_lW6yIbOBrjWei2VSBMr3EBAo6ICbUi"
}