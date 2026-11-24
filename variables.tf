variable "supported_constraints_lookup" {
  description = <<EOT
Map of supported_constraints_lookup, attributes below
Required:
    - permission_name
    - profile_id
Optional:
    - permission_type
EOT

  type = map(object({
    permission_name = string
    profile_id      = string
    permission_type = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.supported_constraints_lookup : (
        length(v.profile_id) >= 1
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.supported_constraints_lookup : (
        length(v.permission_name) >= 1
      )
    ])
    error_message = "must not be empty"
  }
}

