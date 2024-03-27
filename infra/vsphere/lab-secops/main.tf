
module "lab-secops" {
  source               = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/single-vm-cloud"
  vsphere_server_url   = "10.97.23.11"
  vsphere_user         = "administrator@vsphere.local"
  vsphere_password     = var.vsphere_password
  vsphere_datacenter   = "dc-east"
  vsphere_cluster      = "lab-cluster"
  vm_datastore         = "vmData"
  vm_name              = "lab-secops"
  vm_disk_size         = 50
  vm_dns_search_domain = "labz.io"
  vm_domain            = "labz.io"
  vm_ipv4_address      = "10.97.23.13"
  vm_gateway           = "10.97.23.1"
  vm_network           = "vmPub"
  vm_template          = "rocky8-templ-cloudinit"
  vm_cpu               = 2
  vm_memory            = 4096
  vm_dns_server        = "10.97.23.1"
  vm_nic_name          = "ens192"
  vm_os_family         = "Fedora"

}
