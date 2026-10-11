variable "compute_instance_iam_policies" {
  description = <<EOT
Map of compute_instance_iam_policies, attributes below
Required:
    - instance_name
    - policy_data
Optional:
    - project
    - zone
EOT

  type = map(object({
    instance_name = string
    policy_data   = string
    project       = optional(string)
    zone          = optional(string)
  }))
}

