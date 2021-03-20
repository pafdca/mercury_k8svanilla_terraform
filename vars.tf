# Variables

variable "location" {
  type = string
  description = "Región de Azure donde crearemos la infraestructura"
  default = "West Europe"
}

variable "master_vm_size" {
  type = string
  description = "Tamaño de la máquina virtual del Master"
  default = "Standard_DS2_v2" # 7 GB, 2 vCPUs
}

variable "worker_vm_size" {
  type = string
  description = "Tamaño de la máquina virtual de los Workers"
  default = "Standard_D4s_v3" # 16 GB, 4 vCPUs
}

variable "nfs_vm_size" {
  type = string
  description = "Tamaño de la máquina virtual servidor de NFS"
  default = "Standard_DS1_v2" # 3,5 GB, 1 vCPUs
}

