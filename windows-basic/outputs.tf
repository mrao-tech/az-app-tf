

output "app_name" {
  value = azurerm_windows_web_app.azure_winapp.name
}

output "app_url" {
  value = "https://${azurerm_windows_web_app.azure_winapp.default_hostname}"
}
