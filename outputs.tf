output "id" {
  value       = azurerm_subscription.subscription.id
  description = "The Resource ID of the Alias."
}

output "tenant_id" {
  value       = azurerm_subscription.subscription.tenant_id
  description = "The ID of the Tenant to which the subscription belongs."
}
