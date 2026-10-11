variable "priority_class_v1s" {
  description = <<EOT
Map of priority_class_v1s, attributes below
Required:
    - value
    - metadata (block):
        - annotations (optional)
        - generate_name (optional)
        - labels (optional)
        - name (optional)
Optional:
    - description
    - global_default
    - preemption_policy
EOT

  type = map(object({
    value             = number
    description       = optional(string)
    global_default    = optional(bool)
    preemption_policy = optional(string)
    metadata = object({
      annotations   = optional(map(string))
      generate_name = optional(string)
      labels        = optional(map(string))
      name          = optional(string)
    })
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

