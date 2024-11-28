output "id" {
  description = "The ID of the Alias."
  value       = data.azurerm_subscriptions.subscription.subscriptions[0].id
}

output "subscription_id" {
  description = "The Resource ID of the Alias."
  value       = data.azurerm_subscriptions.subscription.subscriptions[0].subscription_id
}

output "subscription_name" {
  description = "The Name of the Alias."
  value       = azurerm_subscription.subscription.subscription_name
}

output "tenant_id" {
  description = "The ID of the Tenant to which the subscription belongs."
  value       = azurerm_subscription.subscription.tenant_id
}
