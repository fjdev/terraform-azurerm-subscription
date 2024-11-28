locals {
  billing_scope_ids = {
    EA  = try(data.azurerm_billing_enrollment_account_scope.ea[0].id, null)
    MCA = try(data.azurerm_billing_mca_account_scope.mca[0].id, null)
    MPA = try(data.azurerm_billing_mpa_account_scope.mpa[0].id, null)
  }
}
