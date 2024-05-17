module "tools-k8s-haproxy1" {
  source               = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/single-vm-cloud"
  vsphere_server_url   = "10.95.123.21"
  vsphere_user         = "administrator@vsphere.local"
  vsphere_password     = var.vsphere_password
  vsphere_datacenter   = "dc-east"
  vsphere_cluster      = "lab-cluster"
  vm_datastore         = "vmData"
  vm_name              = "tools-k8s-haproxy1"
  vm_disk_size         = 20
  vm_domain            = "labz.io"
  vm_dns_search_domain = "labz.io"
  vm_ipv4_address      = "10.95.123.35"
  vm_gateway           = "10.95.123.1"
  vm_network           = "vmPriv"
  vm_template          = "gold-templ-ubuntu22-cloudinit"
  vm_cpu               = 1
  vm_memory            = 2048
  vm_dns_server        = "10.95.123.16"
  vm_nic_name          = "ens192"
  vm_os_family         = ""
}

