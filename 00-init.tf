terraform {

  required_version = "~>1.1"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {}
  }
}

provider "azurerm" {
  features {}
}

resource "random_string" "random" {
  length  = 5
  special = false
}

resource "azurerm_resource_group" "rg" {
  name     = "asp-tf-log-enable-${random_string.random.result}"
  location = "eastasia"
}
