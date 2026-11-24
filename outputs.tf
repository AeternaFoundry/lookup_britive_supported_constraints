output "supported_constraints_lookup_id" {
  description = "Map of id values across all supported_constraints_lookup, keyed the same as var.supported_constraints_lookup"
  value       = { for k, v in data.britive_supported_constraints.supported_constraints_lookup : k => v.id }
}
output "supported_constraints_lookup_constraint_types" {
  description = "Map of constraint_types values across all supported_constraints_lookup, keyed the same as var.supported_constraints_lookup"
  value       = { for k, v in data.britive_supported_constraints.supported_constraints_lookup : k => v.constraint_types }
}
output "supported_constraints_lookup_permission_name" {
  description = "Map of permission_name values across all supported_constraints_lookup, keyed the same as var.supported_constraints_lookup"
  value       = { for k, v in data.britive_supported_constraints.supported_constraints_lookup : k => v.permission_name }
}
output "supported_constraints_lookup_permission_type" {
  description = "Map of permission_type values across all supported_constraints_lookup, keyed the same as var.supported_constraints_lookup"
  value       = { for k, v in data.britive_supported_constraints.supported_constraints_lookup : k => v.permission_type }
}
output "supported_constraints_lookup_profile_id" {
  description = "Map of profile_id values across all supported_constraints_lookup, keyed the same as var.supported_constraints_lookup"
  value       = { for k, v in data.britive_supported_constraints.supported_constraints_lookup : k => v.profile_id }
}

