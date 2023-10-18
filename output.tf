output "nsg_id" {
    value = module.pepito_nsg
        
}

output "resource_group_id" {
  value = data.azurerm_resource_group.resource_group.id
}
