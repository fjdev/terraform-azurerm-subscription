data "azurerm_billing_enrollment_account_scope" "ea" {
  count = contains(keys(var.subscription_type), "EA") ? 1 : 0

  billing_account_name    = var.subscription_type["EA"].billing_account_name
  enrollment_account_name = var.subscription_type["EA"].enrollment_account_name
}

data "azurerm_billing_mca_account_scope" "mca" {
  count = contains(keys(var.subscription_type), "MCA") ? 1 : 0

  billing_account_name = var.subscription_type["MCA"].billing_account_name
  billing_profile_name = var.subscription_type["MCA"].billing_profile_name
  invoice_section_name = var.subscription_type["MCA"].invoice_section_name
}

data "azurerm_billing_mpa_account_scope" "mpa" {
  count = contains(keys(var.subscription_type), "MPA") ? 1 : 0

  billing_account_name = var.subscription_type["MPA"].billing_account_name
  customer_name        = var.subscription_type["MPA"].customer_name
}
