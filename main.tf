locals {
  billing_scope_id = var.subscription_type == "ea" ? data.azurerm_billing_enrollment_account_scope.ea[0].id : var.subscription_type == "mca" ? data.azurerm_billing_mca_account_scope.mca[0].id : var.subscription_type == "mpa" ? data.azurerm_billing_mpa_account_scope.mpa[0].id : var.billing_scope_id
}

resource "azurerm_subscription" "subscription" {
  subscription_name = var.subscription_name
  alias             = var.alias
  billing_scope_id  = local.billing_scope_id
  subscription_id   = var.subscription_id
  workload          = var.workload
  tags              = var.tags
}
