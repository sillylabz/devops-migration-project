module "k8s-worker1" {
  source = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/vsphere/single-vm-cloud"
  vsphere_server_url = "10.23.1.11"
  vsphere_user       = "administrator@vsphere.local"
  vsphere_password   = var.vsphere_password
  vsphere_datacenter = "dc-east"
  vsphere_cluster    = "lab-cluster"
  vm_datastore = "vmData"
  vm_name            = "k8s-worker1"
  vm_disk_size = 100
  vm_dns_search_domain = "labz.io"
  vm_domain = "labz.io"
  vm_ipv4_address = "10.23.1.35"
  vm_gateway = "10.23.1.1"
  vm_network     = "vmPub"
  vm_template    = "gold-templ-ubuntu22-cloudinit"
  vm_cpu         = 2
  vm_memory      = 8192
  vm_dns_server = "10.23.1.9"
}


module "k8s-worker2" {
  source = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/vsphere/single-vm-cloud"
  vsphere_server_url = "10.23.1.11"
  vsphere_user       = "administrator@vsphere.local"
  vsphere_password   = var.vsphere_password
  vsphere_datacenter = "dc-east"
  vsphere_cluster    = "lab-cluster"
  vm_datastore = "vmData"
  vm_name            = "k8s-worker2"
  vm_disk_size = 100
  vm_dns_search_domain = "labz.io"
  vm_domain = "labz.io"
  vm_ipv4_address = "10.23.1.36"
  vm_gateway = "10.23.1.1"
  vm_network     = "vmPub"
  vm_template    = "gold-templ-ubuntu22-cloudinit"
  vm_cpu         = 2
  vm_memory      = 8192
  vm_dns_server = "10.23.1.9"
}


module "k8s-worker3" {
  source = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/vsphere/single-vm-cloud"
  vsphere_server_url = "10.23.1.11"
  vsphere_user       = "administrator@vsphere.local"
  vsphere_password   = var.vsphere_password
  vsphere_datacenter = "dc-east"
  vsphere_cluster    = "lab-cluster"
  vm_datastore = "vmData"
  vm_name            = "k8s-worker3"
  vm_disk_size = 100
  vm_dns_search_domain = "labz.io"
  vm_domain = "labz.io"
  vm_ipv4_address = "10.23.1.37"
  vm_gateway = "10.23.1.1"
  vm_network     = "vmPub"
  vm_template    = "gold-templ-ubuntu22-cloudinit"
  vm_cpu         = 2
  vm_memory      = 8192
  vm_dns_server = "10.23.1.9"
}


