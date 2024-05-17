module "tools-k8s-node1" {
  source               = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/single-vm-cloud"
  vsphere_server_url   = "10.95.123.21"
  vsphere_user         = "administrator@vsphere.local"
  vsphere_password     = var.vsphere_password
  vsphere_datacenter   = "dc-east"
  vsphere_cluster      = "lab-cluster"
  vm_datastore         = "vmData"
  vm_name              = "tools-k8s-node1"
  vm_disk_size         = 50
  vm_domain            = "labz.io"
  vm_dns_search_domain = "labz.io"
  vm_ipv4_address      = "10.95.123.32"
  vm_gateway           = "10.95.123.1"
  vm_network           = "vmPriv"
  vm_template          = "gold-templ-ubuntu22-cloudinit"
  vm_cpu               = 2
  vm_memory            = 8192
  vm_dns_server        = "10.95.123.16"
  vm_nic_name          = "ens192"
  vm_os_family         = ""
}


module "tools-k8s-node2" {
  source               = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/single-vm-cloud"
  vsphere_server_url   = "10.95.123.21"
  vsphere_user         = "administrator@vsphere.local"
  vsphere_password     = var.vsphere_password
  vsphere_datacenter   = "dc-east"
  vsphere_cluster      = "lab-cluster"
  vm_datastore         = "vmData"
  vm_name              = "tools-k8s-node2"
  vm_disk_size         = 50
  vm_domain            = "labz.io"
  vm_dns_search_domain = "labz.io"
  vm_ipv4_address      = "10.95.123.33"
  vm_gateway           = "10.95.123.1"
  vm_network           = "vmPriv"
  vm_template          = "gold-templ-ubuntu22-cloudinit"
  vm_cpu               = 2
  vm_memory            = 8192
  vm_dns_server        = "10.95.123.16"
  vm_nic_name          = "ens192"
  vm_os_family         = ""
}


# module "tools-k8s-node3" {
#   source               = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/single-vm-cloud"
#   vsphere_server_url   = "10.95.123.21"
#   vsphere_user         = "administrator@vsphere.local"
#   vsphere_password     = var.vsphere_password
#   vsphere_datacenter   = "dc-east"
#   vsphere_cluster      = "lab-cluster"
#   vm_datastore         = "vmData"
#   vm_name              = "tools-k8s-node3"
#   vm_disk_size         = 50
#   vm_domain            = "labz.io"
#   vm_dns_search_domain = "labz.io"
#   vm_ipv4_address      = "10.95.123.37"
#   vm_gateway           = "10.95.123.1"
#   vm_network           = "vmPriv"
#   vm_template          = "gold-templ-ubuntu22-cloudinit"
#   vm_cpu               = 2
#   vm_memory            = 4096
#   vm_dns_server        = "10.95.123.16"
#   vm_nic_name          = "ens192"
#   vm_os_family         = ""
# }

