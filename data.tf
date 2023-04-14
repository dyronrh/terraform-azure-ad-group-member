# get users ids from mails
data "azuread_user" "main" {
  for_each            = { for k, v in local.groups_users : join("-", ["object_id", tostring(k)]) => v }
  user_principal_name = each.value.user
}

data "azuread_groups" "all" {
  display_names = keys(var.users_by_group)
}



