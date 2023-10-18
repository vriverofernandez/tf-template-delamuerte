data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "resource_group" {
  name = var.resource_group_name
}


module "pepito_nsg" {
  source = "git@github.com:vriverofernandez/tf-az-module-nsg.git?ref=v1.0.1"
  
  nsg_name              = var.nsg_name
  location              = var.location
  resource_group_name   = var.resource_group_name

}

module "pepito_vnet" {
  source = "git@github.com:vriverofernandez/tf-az-module-vnet.git?ref=v1.0.3"

  name                  = var.name
  location              = var.location
  resource_group_name   = var.resource_group_name
  address_space         = var.address_space
  tags                  = var.tags
  subnets               = var.subnets
  security_group        = module.pepito_nsg.nsg_value_id


}

