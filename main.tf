resource "kubernetes_priority_class_v1" "priority_class_v1s" {
  for_each = var.priority_class_v1s

  value             = each.value.value
  description       = each.value.description
  global_default    = each.value.global_default
  preemption_policy = each.value.preemption_policy

  metadata {
    annotations   = each.value.metadata.annotations
    generate_name = each.value.metadata.generate_name
    labels        = each.value.metadata.labels
    name          = each.value.metadata.name
  }
}

