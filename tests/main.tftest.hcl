variables {
  resource_id = "/subscriptions/02892755-eecf-4df8-bc08-a55279be6b35/resourceGroups/rg-apiops-prod-001/providers/Microsoft.ApiManagement/service/apim-apiops-rn-prod"
}

run "parse_full_resourceid" {

  command = apply

  assert {
    condition     = output.resource_group_name == "rg-apiops-prod-001"
    error_message = "Resource Group name did not match expected."
  }

  assert {
    condition     = output.subscription_id == "02892755-eecf-4df8-bc08-a55279be6b35"
    error_message = "Subscription ID did not match expected"
  }

  assert {
    condition     = output.provider_namespace == "Microsoft.ApiManagement"
    error_message = "Provider namespace did not match expected"
  }

  assert {
    condition     = output.resource_type == "service"
    error_message = "Resource Type did not match expected"
  }

  assert {
    condition     = output.resource_name == "apim-apiops-rn-prod"
    error_message = "Resource Name did not match expected"
  }

}

run "parse_resourceGroupid" {

  variables {
    resource_id = "/subscriptions/02892755-eecf-4df8-bc08-a55279be6b35/resourceGroups/rg-apiops-prod-001"
  }

  command = apply

  assert {
    condition     = output.resource_group_name == "rg-apiops-prod-001"
    error_message = "Resource Group name did not match expected."
  }

  assert {
    condition     = output.subscription_id == "02892755-eecf-4df8-bc08-a55279be6b35"
    error_message = "Subscription ID did not match expected"
  }

  assert {
    condition     = output.provider_namespace == null
    error_message = "Provider namespace did not match expected"
  }

  assert {
    condition     = output.resource_type == "resourceGroups"
    error_message = "Resource Type did not match expected"
  }

  assert {
    condition     = output.resource_name == "rg-apiops-prod-001"
    error_message = "Resource Name did not match expected"
  }

}
