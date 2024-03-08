locals {
  split_id = split("/", var.resource_id)
}

locals {
  subscription_id_index     = index(local.split_id, "subscriptions") + 1
  subscription_id           = local.split_id[local.subscription_id_index]
  resource_group_name_index = index(local.split_id, "resourceGroups") + 1
  resource_group_name       = local.split_id[local.resource_group_name_index]
  provider_namespace_index  = length(local.split_id) > 5 ? index(local.split_id, "providers") + 1 : null
  provider_namespace        = local.provider_namespace_index != null ? local.split_id[local.provider_namespace_index] : null
  resource_type_index       = local.provider_namespace_index != null ? local.provider_namespace_index + 1 : null
  resource_type             = local.provider_namespace_index != null ? local.split_id[local.resource_type_index] : "resourceGroups"
  resource_name_index       = length(local.split_id) - 1
  resource_name             = local.split_id[local.resource_name_index]
}
