provider "azurerm" {
  features {}
  #tenant_id = "c6198395-22e6-4778-9809-ac8dcfd76901" # or the other tenant ID
}

resource "azurerm_resource_group" "azure_rg" {
  name     = var.azure_rg
  location = var.location
}

resource "azurerm_service_plan" "azure_winsp" {
  name                = "${var.azure_winsp}-sp"
  location            = var.location
  resource_group_name = var.azure_rg
  os_type             = "Windows"
  sku_name            = var.azure_winsku
}

resource "azurerm_windows_web_app" "azure_winapp" {
  name                = "${var.azure_winapp}-basic-example"
  location            = var.location
  resource_group_name = var.azure_rg
  service_plan_id     = azurerm_service_plan.azure_winsp.id

  site_config {}
}
