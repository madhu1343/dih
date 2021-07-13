provider "azurerm" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  version = "=2.4.0"

  subscription_id = "3214f068-4320-4238-a5cc-0a8957a43edc"
  client_id       = "f47642af-35db-49f8-a029-102e3bb18ee2"
  client_secret   = "Y_~~eKnI_L-n64O_n9e8-81o_J-zy2T_A0"
  tenant_id       = "3c3261e0-dc27-4044-9299-9a41201d3cba"

  features {}
}
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

// resource "azurerm_application_insights" "example" {
//   name                = "example-appinsights"
//   location            = azurerm_resource_group.example.location
//   resource_group_name = azurerm_resource_group.example.name
//   application_type    = "web"
// }

// resource "azurerm_monitor_action_group" "example" {
//   name                = "example-action-group"
//   resource_group_name = azurerm_resource_group.example.name
//   short_name          = "exampleactiongroup"
// }

// resource "azurerm_monitor_smart_detector_alert_rule" "example" {
//   name                = "example-smart-detector-alert-rule"
//   resource_group_name = azurerm_resource_group.example.name
//   severity            = "Sev0"
//   scope_resource_ids  = [azurerm_application_insights.example.id]
//   frequency           = "PT1M"
//   detector_type       = "FailureAnomaliesDetector"

//   action_group {
//     ids = [azurerm_monitor_action_group.test.id]
//   }
// }