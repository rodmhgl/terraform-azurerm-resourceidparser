locals {
  split_id = split("/", var.resource_id)
}

# # Example for extracting resource name, resource group, and provider
# resource "null_resource" "parser" {
#   # This resource is just a placeholder to show local values calculation.
#   # In real scenarios, you might not need an actual resource here.
# }

locals {
  resource_group_name_index = index(local.split_id, "resourceGroups") + 1
  resource_group_name       = local.split_id[local.resource_group_name_index]

  provider_namespace_index = index(local.split_id, "providers") + 1
  provider_namespace       = local.split_id[local.provider_namespace_index]

  subscription_id_index = index(local.split_id, "subscriptions") + 1
  subscription_id       = local.split_id[local.subscription_id_index]

  resource_type_index = local.provider_namespace_index + 1
  resource_type       = local.split_id[local.resource_type_index]

  resource_name_index = length(local.split_id) - 1
  resource_name       = local.split_id[local.resource_name_index]
}
