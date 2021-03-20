# Creación de la vnet
#resource "azurerm_virtual_network" "vnet-mynet" {
#    name                = "vnet-spoke"
#    address_space       = ["10.150.0.0/16"]
#    location            = azurerm_resource_group.rg.location
#    resource_group_name = azurerm_resource_group.rg.name
#
#    tags = {
#        environment = "DEV"
#    }
#}

# Creación de la subnet
#resource "azurerm_subnet" "snet-k8s" {
#    name                   = "snet-spokedev1-k8sclusternodes"
#    resource_group_name    = azurerm_resource_group.rg.name
#    virtual_network_name   = "vnet-spokedev1"
#    address_prefixes       = ["10.150.0.0/24"]
#}

# Creación de NICs

# NIC para máquina master
resource "azurerm_network_interface" "nic-master" {
  name                = "nic-master"  
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

    ip_configuration {
    name                           = "ip-master"
    subnet_id                      = "/subscriptions/315b7266-6b43-43ed-ac5e-c8240545455c/resourceGroups/RG-MERCURY-PILOTO-SPOKE/providers/Microsoft.Network/virtualNetworks/vnet-spokedev1/subnets/snet-spokedev1-k8sclusternodes"
    private_ip_address_allocation  = "Static"
    private_ip_address             = "10.150.0.10"
  }

    tags = {
        environment = "DEV"
    }

}

# NIC para máquina worker01
resource "azurerm_network_interface" "nic-worker01" {
  name                = "nic-worker01"  
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

    ip_configuration {
    name                           = "ip-worker01"
    subnet_id                      = "/subscriptions/315b7266-6b43-43ed-ac5e-c8240545455c/resourceGroups/RG-MERCURY-PILOTO-SPOKE/providers/Microsoft.Network/virtualNetworks/vnet-spokedev1/subnets/snet-spokedev1-k8sclusternodes"
    private_ip_address_allocation  = "Static"
    private_ip_address             = "10.150.0.11"
  }

    tags = {
        environment = "DEV"
    }

}

# NIC para máquina worker02
resource "azurerm_network_interface" "nic-worker02" {
  name                = "nic-worker02"  
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

    ip_configuration {
    name                           = "ip-worker02"
    subnet_id                      = "/subscriptions/315b7266-6b43-43ed-ac5e-c8240545455c/resourceGroups/RG-MERCURY-PILOTO-SPOKE/providers/Microsoft.Network/virtualNetworks/vnet-spokedev1/subnets/snet-spokedev1-k8sclusternodes"
    private_ip_address_allocation  = "Static"
    private_ip_address             = "10.150.0.12"
  }

    tags = {
        environment = "DEV"
    }

}

# NIC para máquina worker03
resource "azurerm_network_interface" "nic-worker03" {
  name                = "nic-worker03"  
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

    ip_configuration {
    name                           = "ip-worker03"
    subnet_id                      = "/subscriptions/315b7266-6b43-43ed-ac5e-c8240545455c/resourceGroups/RG-MERCURY-PILOTO-SPOKE/providers/Microsoft.Network/virtualNetworks/vnet-spokedev1/subnets/snet-spokedev1-k8sclusternodes"
    private_ip_address_allocation  = "Static"
    private_ip_address             = "10.150.0.13"
  }

    tags = {
        environment = "DEV"
    }

}

# NIC para máquina nfs
resource "azurerm_network_interface" "nic-nfs" {
  name                = "nic-nfs"  
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

    ip_configuration {
    name                           = "ip-nfs"
    subnet_id                      = "/subscriptions/315b7266-6b43-43ed-ac5e-c8240545455c/resourceGroups/RG-MERCURY-PILOTO-SPOKE/providers/Microsoft.Network/virtualNetworks/vnet-spokedev1/subnets/snet-spokedev1-k8sclusternodes"
    private_ip_address_allocation  = "Static"
    private_ip_address             = "10.150.0.200"
  }

    tags = {
        environment = "DEV"
    }

}

