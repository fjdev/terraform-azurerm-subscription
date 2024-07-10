resource "azurerm_management_group_subscription_association" "mgsubassoc" {
  count = var.management_group_id != null ? 1 : 0

  management_group_id = var.management_group_id
  subscription_id     = data.azurerm_subscriptions.created.subscriptions[0].subscription_id
}

