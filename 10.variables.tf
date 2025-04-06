variable "rg1_name" {
  type    = string
  default = "Enclave1"
}
variable "rg2_name" {
  type    = string
  default = "Enclave2"
}
variable "rg1_location" {
  type    = string
  default = "eastus"
}
variable "rg2_location" {
  type    = string
  default = "westus"
}
variable "env" {
  type    = string
  default = "dev"
}

variable "vnet1_address_space" {
  type    = list(string)
  default = ["10.43.0.0/16"]
}
variable "vnet1_subnet1" {
  type    = list(string)
  default = ["10.43.1.0/24"]
}
#
variable "vnet1_subnet2" {
  type    = list(string)
  default = ["10.43.2.0/24"]
}
#
variable "vnet1_subnet3" {
  type    = list(string)
  default = ["10.43.3.0/24"]
}