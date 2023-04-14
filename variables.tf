variable "users_by_group" {
  description = "(Required) Users Memership by azure ad groups "
  type        = map(any)
  default = {}
  nullable = false
}


