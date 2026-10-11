output "priority_class_v1s_id" {
  description = "Map of id values across all priority_class_v1s, keyed the same as var.priority_class_v1s except keys with no id are omitted"
  value       = { for k, v in kubernetes_priority_class_v1.priority_class_v1s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "priority_class_v1s_description" {
  description = "Map of description values across all priority_class_v1s, keyed the same as var.priority_class_v1s except keys with no description are omitted"
  value       = { for k, v in kubernetes_priority_class_v1.priority_class_v1s : k => v.description if v.description != null && length(v.description) > 0 }
}
output "priority_class_v1s_global_default" {
  description = "Map of global_default values across all priority_class_v1s, keyed the same as var.priority_class_v1s except keys with no global_default are omitted"
  value       = { for k, v in kubernetes_priority_class_v1.priority_class_v1s : k => v.global_default if v.global_default != null }
}
output "priority_class_v1s_metadata" {
  description = "Map of metadata values across all priority_class_v1s, keyed the same as var.priority_class_v1s except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_priority_class_v1.priority_class_v1s : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "priority_class_v1s_preemption_policy" {
  description = "Map of preemption_policy values across all priority_class_v1s, keyed the same as var.priority_class_v1s except keys with no preemption_policy are omitted"
  value       = { for k, v in kubernetes_priority_class_v1.priority_class_v1s : k => v.preemption_policy if v.preemption_policy != null && length(v.preemption_policy) > 0 }
}
output "priority_class_v1s_value" {
  description = "Map of value values across all priority_class_v1s, keyed the same as var.priority_class_v1s except keys with no value are omitted"
  value       = { for k, v in kubernetes_priority_class_v1.priority_class_v1s : k => v.value if v.value != null }
}

