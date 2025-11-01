resource "azurerm_network_interface" "example" {
  name                = "var.nic-name"
  location            = azurerm_resource_group.AP1.location
  resource_group_name = azurerm_resource_group.AP1.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.example.id
  }
}
