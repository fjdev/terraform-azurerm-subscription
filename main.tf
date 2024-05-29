resource "azurerm_subscription" "subscription" {
  subscription_name = var.subscription_name
  alias             = var.alias
  billing_scope_id  = lookup(local.billing_scope_ids, keys(var.subscription_type)[0], var.billing_scope_id)
  subscription_id   = var.subscription_id
  workload          = var.workload
  tags              = var.tags
}
