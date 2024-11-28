resource "azurerm_subscription" "subscription" {
  subscription_name = var.subscription_name
  alias             = var.alias
  billing_scope_id  = var.subscription_id == null ? lookup(local.billing_scope_ids, keys(var.subscription_type)[0], var.billing_scope_id) : null
  subscription_id   = var.subscription_id
  workload          = var.workload
  tags              = var.tags
}

resource "azurerm_management_group_subscription_association" "management_group_subscription_association" {
  count = var.management_group_id != null ? 1 : 0

  management_group_id = var.management_group_id
  subscription_id     = data.azurerm_subscriptions.subscription.subscriptions[0].id
}
