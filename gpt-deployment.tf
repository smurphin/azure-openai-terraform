resource "azurerm_cognitive_account" "gpt-act" {
    for_each = var.deployments
    custom_subdomain_name              = each.key
    dynamic_throttling_enabled         = false
    kind                               = "OpenAI"
    local_auth_enabled                 = true
    location                           = each.value.location
    name                               = each.key
    outbound_network_access_restricted = false
    public_network_access_enabled      = true
    resource_group_name                = azurerm_resource_group.gpt-rg.name
    sku_name                           = "S0"
    tags                               = {}

    network_acls {
        default_action = "Deny"
        ip_rules       = var.allowed-subnets
    }

    timeouts {}

}

resource "azurerm_cognitive_deployment" "gpt-deployment" {
  for_each = { for idx, dep in local.cognitive_deployments : idx => dep }

  cognitive_account_id = each.value.cognitive_account_id
  name                 = each.value.model_name

  model {
    format  = "OpenAI"
    name    = each.value.model_name
    version = each.value.version
  }

  scale {
    type = "Standard"
  }

  timeouts {}
}
