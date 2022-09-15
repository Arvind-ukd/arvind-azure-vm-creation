variable "location" {
  description = "Which location (Central India, South India, West US, East US)"
  default     =  "Central India"
  }

  variable "location1" {
  description = "Which location (Central India, South India, West US, East US)"
  default     =  "West US"
  }

  variable "location2" {
  description = "Which location (Central India, South India, West US, East US)"
  default     =  "East US"
  }

  variable "location3" {
  description = "Which location (Central India, South India, West US, East US)"
  default     =  "South India"
  }

  variable "resoucegp" {
  description = "Name of the resouce group"
  default     =   "arvind-rg-13sept2022"
  }

   variable "subnet" {
  description = "subet of the virtual network"
  default     =   "subnet1"
  }

  variable "ci_nic" {
  type = string
}
 variable "si_nic" {
  type = string
}
 variable "eus_nic" {
  type = string
}
 variable "wus_nic" {
  type = string
}