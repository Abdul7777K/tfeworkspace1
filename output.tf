output "subnet_info" {
  value = {
    for idx, subnet in azurerm_subnet.example : subnet.name => {
      name                 = subnet.name
      resource_group_name  = subnet.resource_group_name
      virtual_network_name = subnet.virtual_network_name
      address_prefixes     = subnet.address_prefixes
      id                   = subnet.id
      
    }
  }
}
