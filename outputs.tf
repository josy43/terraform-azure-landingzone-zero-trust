# Resource Group Name
output "resource_group_name" {
  description = "Name der Resource Group"
  value       = azurerm_resource_group.rg_main.name
}

# VNet Name
output "vnet_name" {
  description = "Name des Virtual Network"
  value       = azurerm_virtual_network.vnet_hub.name
}

# Subnet Web – CIDR
output "subnet_web_cidr" {
  description = "CIDR des Web-Subnetzes"
  value       = azurerm_subnet.subnet_web.address_prefixes[0]
}

# Subnet Internal – CIDR
output "subnet_internal_cidr" {
  description = "CIDR des internen Subnetzes"
  value       = azurerm_subnet.subnet_internal.address_prefixes[0]
}

# Öffentliche IP der Web-VM
output "vm_web_public_ip" {
  description = "Öffentliche IP-Adresse der VM im Web-Subnetz"
  value       = azurerm_public_ip.pip_web.ip_address
}

# Private IP der Web-VM
output "vm_web_private_ip" {
  description = "Private IP-Adresse der Web-VM"
  value       = azurerm_network_interface.nic_web.private_ip_address
}

# Private IP der Internal-VM
output "vm_internal_private_ip" {
  description = "Private IP-Adresse der Internal-VM"
  value       = azurerm_network_interface.nic_internal.private_ip_address
}
