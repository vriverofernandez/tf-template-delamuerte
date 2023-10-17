module "pepito" {
  source = "git@github.com:vriverofernandez/tf-az-module-vnet.git"
  
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space

}