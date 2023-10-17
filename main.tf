
module "pepito_nsg" {
  source = "git@github.com:vriverofernandez/tf-az-module-nsg.git"
  
  nsg_name              = var.nsg_name
  location              = var.location
  resource_group_name   = var.resource_group_name

}

module "pepito_vnet" {
  
  source = "git@github.com:vriverofernandez/tf-az-module-vnet.git?ref=v1.0.2"

  name                  = var.name
  location              = var.location
  resource_group_name   = var.resource_group_name
  address_space         = var.address_space
  tags                  = var.tags
  subnet_name           = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
  security_group        = module.pepito_nsg.nsg_value_id


}

