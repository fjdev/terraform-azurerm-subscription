resource "azurerm_management_group_subscription_association" "mgsubassoc" {
  count = local.management_group_subscription_association

  management_group_id = data.azurerm_management_group.mg[0].id
  subscription_id     = data.azurerm_subscriptions.created.subscriptions[0].id
}
