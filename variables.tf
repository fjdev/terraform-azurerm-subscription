variable "subscription_name" {
  type        = string
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
  type        = string
  default     = "ea"
  description = "(Optional) The type of the Subscription. Possible values are 'ea', 'mca', 'mpa'. Default is 'ea'."
}

variable "billing_account_name" {
  type        = string
  default     = null
  description = "(Optional) The Billing Account Name. Used for all Subscription Types."
}

variable "enrollment_account_name" {
  type        = string
  default     = null
  description = "(Optional) The Enrollment Account Name in the above Enterprise Account. Required for 'ea' Subscription Type."
}

variable "billing_profile_name" {
  type        = string
  default     = null
  description = "(Optional) The Billing Profile Name in the above Billing Account. Required for 'mca' Subscription Type."
}

variable "invoice_section_name" {
  type        = string
  default     = null
  description = "(Optional) The Invoice Section Name in the above Billing Profile. Required for 'mca' Subscription Type."
}

variable "customer_name" {
  type        = string
  default     = null
  description = "(Optional) The Customer Name in the above Billing Account. Required for 'mpa' Subscription Type."
}
