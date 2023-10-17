module "pepito" {
  source = "github.com/vriverofernandez/tf-az-module-vnet.git"
  
  name                  = var.name
  location              = var.location
  resource_group_name   = var.resource_group_name
  address_space         = var.address_space
  nsg_name              = var.nsg_name
  tags                  = var.tags
  subnet_name           = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
}