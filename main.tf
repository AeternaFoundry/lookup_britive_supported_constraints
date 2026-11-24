data "britive_supported_constraints" "supported_constraints_lookup" {
  for_each = var.supported_constraints_lookup

  permission_name = each.value.permission_name
  profile_id      = each.value.profile_id
  permission_type = each.value.permission_type
}

