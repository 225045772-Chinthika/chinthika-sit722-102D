terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = { source = "hashicorp/azurerm", version = "~> 3.114" }
  }
  # local state is fine because apply + destroy run in the same job
  backend "local" {}
}

provider "azurerm" { features {} }