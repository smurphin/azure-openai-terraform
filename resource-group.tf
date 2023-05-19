resource "azurerm_resource_group" "gpt-rg" {
    #id       = "/subscriptions/${var.subscription}/resourceGroups/${var.resource-group}"
    location = "westeurope"
    name     = "${var.env}-GPT"
    tags     = {}

 
    timeouts {}
}