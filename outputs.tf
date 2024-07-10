output "subscription_id" {
  description = "The Resource ID of the Alias."
  value       = data.azurerm_subscriptions.created.subscriptions[0].subscription_id
}

output "subscription_name" {
  description = "The Name of the Alias."
  value       = azurerm_subscription.sub.subscription_name
}

output "tenant_id" {
  description = "The ID of the Tenant to which the subscription belongs."
  value       = azurerm_subscription.sub.tenant_id
}
