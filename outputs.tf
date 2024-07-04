output "subscription_id" {
  value       = data.azurerm_subscriptions.created.subscriptions[0].subscription_id
  description = "The Resource ID of the Alias."
}

output "subscription_name" {
  value       = azurerm_subscription.subscription.subscription_name
  description = "The Name of the Alias."
}

output "tenant_id" {
  value       = azurerm_subscription.subscription.tenant_id
  description = "The ID of the Tenant to which the subscription belongs."
}
