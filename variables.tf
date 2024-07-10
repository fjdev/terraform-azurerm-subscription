variable "subscription_name" {
  type        = string
  description = "(Required) The Name of the Subscription. This is the Display Name in the portal."
  default     = null
}

variable "alias" {
  type        = string
  description = "(Optional) The Alias name for the subscription. Terraform will generate a new GUID if this is not supplied. Changing this forces a new Subscription to be created."
  default     = null
}

variable "billing_scope_id" {
  type        = string
  description = "(Optional) The Azure Billing Scope ID. Can be a Microsoft Customer Account Billing Scope ID, a Microsoft Partner Account Billing Scope ID or an Enrollment Billing Scope ID."
  default     = null
}

variable "subscription_id" {
  type        = string
  description = "(Optional) The ID of the Subscription. Changing this forces a new Subscription to be created."
  default     = null
}

variable "workload" {
  type        = string
  description = "(Optional) The workload type of the Subscription. Possible values are Production (default) and DevTest. Changing this forces a new Subscription to be created."
  default     = null
}

variable "tags" {
  type        = any
  description = "(Optional) A mapping of tags to assign to the Subscription."
  default     = null
}

variable "subscription_type" {
  type = map(object({
    billing_account_name    = optional(string)
    enrollment_account_name = optional(string)
    billing_profile_name    = optional(string)
    invoice_section_name    = optional(string)
    customer_name           = optional(string)
  }))
  description = "(Optional) The Subscription Type to use and the required parameters for that Subscription Type. Possible values are 'EA', 'MCA' and 'MPA'."
  default     = null
}
