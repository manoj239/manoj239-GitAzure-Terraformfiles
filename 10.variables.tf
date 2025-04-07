variable "rg1_name" {
  type = string
}
variable "rg2_name" {
  type = string
}
variable "rg1_location" {
  type = string
}
variable "rg2_location" {
  type = string
}
variable "env" {
  type = string
}

variable "vnet1_address_space" {
  type = list(string)
}
variable "vnet1_subnet1" {
  type = list(string)
}
#
variable "vnet1_subnet2" {
  type = list(string)
}
#
variable "vnet1_subnet3" {
  type = list(string)
}