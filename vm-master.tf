# Nodo master de k8s

# Creación de máquina virtual
resource "azurerm_linux_virtual_machine" "vm-master" {
    name                = "master"
    resource_group_name = azurerm_resource_group.rg.name
    location            = azurerm_resource_group.rg.location
    size                = var.master_vm_size
    admin_username      = "mercuryadmin"
    network_interface_ids = [ azurerm_network_interface.nic-master.id ]
    disable_password_authentication = true

    # Copia de clave pública SSH
    admin_ssh_key {
        username   = "mercuryadmin"
        public_key = file("~/.ssh/id_rsa.pub")
    }

    # Almacenamiento con redundancia local estándar
    os_disk {
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }

    source_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "18.04-LTS"
        version   = "latest"
    }

    boot_diagnostics {
        storage_account_uri = azurerm_storage_account.stAccount.primary_blob_endpoint
    }

    tags = {
        environment = "DEV"
    }

}
