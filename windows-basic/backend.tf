terraform {
  backend "azurerm" {
    resource_group_name  = "config-statefile-rg"
    storage_account_name = "tfstatemrao123"
    container_name       = "tfstate"
    key                  = "windows-basic.tfstate"
  }
}