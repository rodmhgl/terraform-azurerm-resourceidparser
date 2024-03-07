output "resource_group_name" {
  description = "The name of the resource group extracted from the Resource ID."
  value       = local.resource_group_name
}

output "subscription_id" {
  description = "The id of the subscription extracted from the Resource ID."
  value       = local.subscription_id
}

output "provider_namespace" {
  description = "The provider namespace extracted from the Resource ID."
  value       = local.provider_namespace
}

output "resource_type" {
  description = "The resource type extracted from the Resource ID."
  value       = local.resource_type
}

output "resource_name" {
  description = "The resource name extracted from the Resource ID."
  value       = local.resource_name
}
