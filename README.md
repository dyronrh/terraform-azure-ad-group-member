<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | >= 2.33.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.42.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.4.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | >= 2.33.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_group_member.main](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group_member) | resource |
| [azuread_groups.all](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/groups) | data source |
| [azuread_user.main](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/user) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_users_by_group"></a> [users\_by\_group](#input\_users\_by\_group) | (Required) Users Memership by azure ad groups | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_full_users_groups_id"></a> [full\_users\_groups\_id](#output\_full\_users\_groups\_id) | Users list by group on azure ad |
<!-- END_TF_DOCS -->