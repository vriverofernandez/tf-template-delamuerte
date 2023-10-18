name = "vn-pre-delamuerte-victor"
nsg_name = "nsg-name-delamuerte-victor"
location = "west europe"
resource_group_name = "test-tf"
address_space = ["10.0.0.0/16"]
tags = {"environment":"develop"}
subnets = [
    { subnet_name = "subnet61", subnet_address_prefix = "10.0.1.0/24" },
    { subnet_name = "subnet62", subnet_address_prefix = "10.0.2.0/24" }
]