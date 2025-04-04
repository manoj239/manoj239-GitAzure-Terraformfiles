resource "azurerm_resource_group" "Enclave1" {
  name     = "Enclave1"
  location = "eastus"
}

#resource "azurerm_resource_group" "Enclave2" {
#  name     = "Enclave2"
#  location = "westus"
#}

#resource "azurerm_resource_group" "Enclave3" {
#  name     = "Enclave3"
#  location = "westus2"
#}

#--------------------------------

#variable rg1_name {
#  type        = string
#  default     = "Enclave1"
#}

#variable rg2_name {
#  type        = string
#  default     = "Enclave2"
#}

#variable rg1_location {
#  type        = string
#  default     = "eastus"
#}

#variable rg2_location {
#  type        = string
#  default     = "westus"
#}

#----------
#variable "env" {
#  type      = string 
#  default   = "dev"
#}


#resource "azurerm_resource_group" "Enclave1" {
#  name     =  var.rg1_name
#  location =  var.rg1_location
#  tags = {
#     environment = var.env
#  }
#}
#
#resource "azurerm_resource_group" "Enclave2" {
#  name     =  var.rg2_name
#  location =  var.rg2_location
#}