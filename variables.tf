variable "subscription_name" {
  type        = string
  default     = null
  description = "(Required) The Name of the Subscription. This is the Display Name in the portal."
}

variable "alias" {
  type        = string
  default     = null
  description = "(Optional) The Alias name for the subscription. Terraform will generate a new GUID if this is not supplied. Changing this forces a new Subscription to be created."
}

variable "billing_scope_id" {
  type        = string
  default     = null
  description = "(Optional) The Azure Billing Scope ID. Can be a Microsoft Customer Account Billing Scope ID, a Microsoft Partner Account Billing Scope ID or an Enrollment Billing Scope ID."
}

variable "subscription_id" {
  type        = string
  default     = null
  description = "(Optional) The ID of the Subscription. Changing this forces a new Subscription to be created."
}

variable "workload" {
  type        = string
  default     = null
  description = "(Optional) The workload type of the Subscription. Possible values are Production (default) and DevTest. Changing this forces a new Subscription to be created."
}

variable "tags" {
  type        = any
  default     = null
  description = "(Optional) A mapping of tags to assign to the Subscription."
}

variable "subscription_type" {
  type = map(object({
    billing_account_name    = optional(string)
    enrollment_account_name = optional(string)
    billing_profile_name    = optional(string)
    invoice_section_name    = optional(string)
    customer_name           = optional(string)
  }))
  default     = null
  description = "(Optional) The Subscription Type to use and the required parameters for that Subscription Type. Possible values are 'EA', 'MCA' and 'MPA'."
}
