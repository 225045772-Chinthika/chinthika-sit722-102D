terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.114"
    }
  }
}
# The empty features block is REQUIRED for azurerm
provider "azurerm" {
  features {}
}