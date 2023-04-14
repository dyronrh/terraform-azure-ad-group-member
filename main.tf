

locals {
groups_users = flatten([
    for  group, users in var.users_by_group: [
      for k, v in users : {
        group = group
        user  = v
      }
    ]
  ])

users_ids = flatten([
    for  key, users in data.azuread_user.main: [
      for k, v in users :  {
        user_id = v
      } if k == "id"
    ]
  ])
  users_groups_ids =  {for idx, subnet in local.groups_users: idx => merge(subnet,{id = values(local.users_ids[tonumber(idx)])[0]})} 
}

resource "azuread_group_member" "main" {
for_each = local.users_groups_ids
  group_object_id  = data.azuread_groups.all.object_ids[index(data.azuread_groups.all.display_names,each.value.group)] 
  member_object_id = each.value.id
}
