<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_subscription.subscription](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subscription) | resource |
| [azurerm_billing_enrollment_account_scope.ea](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/billing_enrollment_account_scope) | data source |
| [azurerm_billing_mca_account_scope.mca](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/billing_mca_account_scope) | data source |
| [azurerm_billing_mpa_account_scope.mpa](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/billing_mpa_account_scope) | data source |
| [azurerm_subscriptions.created](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alias"></a> [alias](#input\_alias) | (Optional) The Alias name for the subscription. Terraform will generate a new GUID if this is not supplied. Changing this forces a new Subscription to be created. | `string` | `null` | no |
| <a name="input_billing_scope_id"></a> [billing\_scope\_id](#input\_billing\_scope\_id) | (Optional) The Azure Billing Scope ID. Can be a Microsoft Customer Account Billing Scope ID, a Microsoft Partner Account Billing Scope ID or an Enrollment Billing Scope ID. | `string` | `null` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | (Optional) The ID of the Subscription. Changing this forces a new Subscription to be created. | `string` | `null` | no |
| <a name="input_subscription_name"></a> [subscription\_name](#input\_subscription\_name) | (Required) The Name of the Subscription. This is the Display Name in the portal. | `string` | `null` | no |
| <a name="input_subscription_type"></a> [subscription\_type](#input\_subscription\_type) | (Optional) The Subscription Type to use and the required parameters for that Subscription Type. Possible values are 'EA', 'MCA' and 'MPA'. | <pre>map(object({<br>    billing_account_name    = optional(string)<br>    enrollment_account_name = optional(string)<br>    billing_profile_name    = optional(string)<br>    invoice_section_name    = optional(string)<br>    customer_name           = optional(string)<br>  }))</pre> | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the Subscription. | `any` | `null` | no |
| <a name="input_workload"></a> [workload](#input\_workload) | (Optional) The workload type of the Subscription. Possible values are Production (default) and DevTest. Changing this forces a new Subscription to be created. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subscription_id"></a> [subscription\_id](#output\_subscription\_id) | The Resource ID of the Alias. |
| <a name="output_subscription_name"></a> [subscription\_name](#output\_subscription\_name) | The Name of the Alias. |
| <a name="output_tenant_id"></a> [tenant\_id](#output\_tenant\_id) | The ID of the Tenant to which the subscription belongs. |
<!-- END_TF_DOCS -->