locals {
  cognitive_deployments = flatten([
    for deployment, values in var.deployments : [
      for model in values.models : {
        deployment_name        = deployment
        cognitive_account_id  = azurerm_cognitive_account.gpt-act[deployment].id
        model_name            = model
        version               = var.model_versions[model]
      }
    ]
  ])
}
